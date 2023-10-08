/**
Can be as a terraform module like:

module "backup_jobs" {
  source = "./modules/backup_jobs"

  backup_name = "sentry-backup"

  object_storage_access_key = data.terraform_remote_state.static.outputs.object_storage_access_key
  object_storage_secret_key = data.terraform_remote_state.static.outputs.object_storage_secret_key
  object_storage_bucket_name = data.terraform_remote_state.static.outputs.object_storage_bucket_name
  object_storage_region = data.terraform_remote_state.static.outputs.object_storage_region
  object_storage_endpoint_url = "s3.${data.terraform_remote_state.static.outputs.object_storage_region}.scw.cloud"

  backup_object_storage_bucket_name = data.terraform_remote_state.static.outputs.backup_object_storage_bucket_name
  backup_object_storage_region = data.terraform_remote_state.static.outputs.backup_object_storage_region
  backup_object_storage_access_key = data.terraform_remote_state.static.outputs.backup_object_storage_access_key
  backup_object_storage_secret_key = data.terraform_remote_state.static.outputs.backup_object_storage_secret_key
  backup_object_storage_endpoint_url = "s3.${data.terraform_remote_state.static.outputs.backup_object_storage_region}.scw.cloud"

  db_vendor = "scaleway"
  db_region = data.terraform_remote_state.static.outputs.object_storage_region
  db_name = "rdb"
  db_instance_id = data.terraform_remote_state.static.outputs.db_instance_id
  db_secret_key = data.terraform_remote_state.static.outputs.db_secret_key
}
*/


resource "kubernetes_config_map" "rclone_config" {
  metadata {
    name = "rclone-config"
  }

  data = {
    "rclone.conf" = <<-EOT
[${var.object_storage_bucket_name}]
type = s3
provider = Scaleway
access_key_id = ${var.object_storage_access_key}
secret_access_key = ${var.object_storage_secret_key}
region = ${var.object_storage_region}
endpoint = ${var.object_storage_endpoint_url}
acl = private
bucket_acl = private
upload_cutoff = 20Mi

[${var.backup_object_storage_bucket_name}]
type = s3
provider = Scaleway
access_key_id = ${var.backup_object_storage_access_key}
secret_access_key = ${var.backup_object_storage_secret_key}
region = ${var.backup_object_storage_region}
endpoint = ${var.backup_object_storage_endpoint_url}
storage_class = GLACIER
acl = private
    EOT
  }
}

resource "kubernetes_cron_job_v1" "do_daily_object_storage_backups" {
  metadata {
    name = "do-daily-object-storage-backups"
  }
  spec {
    schedule = "0 2 * * *"
    failed_jobs_history_limit = 5
    successful_jobs_history_limit = 10
    timezone = "Europe/Stockholm"
    concurrency_policy = "Forbid"

    job_template {
      metadata {}
      spec {
        backoff_limit = 2
        ttl_seconds_after_finished = 10

        template {
          metadata {}

          spec {
            volume {
              name = "rclone-config-volume"
              config_map {
                name = kubernetes_config_map.rclone_config.metadata[0].name
              }
            }

            container {
              name = "rclone"
              image = "rclone/rclone:latest"
              command = [
                "rclone",
                "copy",
                "${var.object_storage_bucket_name}:/${var.object_storage_bucket_name}",
                "${var.backup_object_storage_bucket_name}:/${var.backup_object_storage_bucket_name}"]


              resources {
                limits = {
                  cpu = "1000m"
                  memory = "10000Mi"
                }

                requests = {
                  cpu = "400m"
                  memory = "400Mi"
                }
              }

              volume_mount {
                name = "rclone-config-volume"
                mount_path = "/config/rclone"
              }
            }

          }
        }
      }
    }
  }
}

resource "kubernetes_config_map" "db_backup_runner" {
  metadata {
    name = "db-backup-runner"
  }

  data = {
    "variables.yml" = <<-EOT
---
backup_name: "${ var.backup_name }"
db_vendor: "${var.db_vendor}"

db_region: "${ var.db_region }"
db_name: "${ var.db_name }"
db_instance_id: "${ var.db_instance_id }"
db_secret_key: "${ var.db_secret_key }"

object_storage_bucket_name: "${ var.backup_object_storage_bucket_name }"
object_storage_endpoint_url: "${ var.backup_object_storage_endpoint_url }"
object_storage_access_key: "${ var.backup_object_storage_access_key }"
object_storage_secret_key: "${ var.backup_object_storage_secret_key}"
object_storage_region: "${ var.backup_object_storage_region }"
    EOT
  }
}

resource "kubernetes_cron_job_v1" "do_daily_db_backup" {
  metadata {
    name = "do-daily-db-backup"
  }
  spec {
    schedule = "0 1 * * *"
    failed_jobs_history_limit = 5
    successful_jobs_history_limit = 10
    timezone = "Europe/Stockholm"
    concurrency_policy = "Forbid"

    job_template {
      metadata {}
      spec {
        backoff_limit = 2
        ttl_seconds_after_finished = 10

        template {
          metadata {}

          spec {
            volume {
              name = "db-backup-runner-volume"
              config_map {
                name = kubernetes_config_map.db_backup_runner.metadata[0].name
              }
            }

            container {
              name = "backuprunner"
              image = "ghcr.io/frojd/dockerimages/db-dumper:latest"

              resources {
                limits = {
                  cpu = "1000m"
                  memory = "10000Mi"
                }

                requests = {
                  cpu = "400m"
                  memory = "400Mi"
                }
              }

              volume_mount {
                name = "db-backup-runner-volume"
                mount_path = "/home/app/config"
              }
            }

          }
        }
      }
    }
  }
}
