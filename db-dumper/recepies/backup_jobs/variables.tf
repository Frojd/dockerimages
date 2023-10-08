# Should be stage or project or understandable without extensions.
# Eg. "frojd-stage"
variable "backup_name" {
  type = string
}

# Your main asset bucket credentials
variable "object_storage_access_key" {
  type = string
}

variable "object_storage_secret_key" {
  type = string
  sensitive = true
}

variable "object_storage_bucket_name" {
  type = string
}

variable "object_storage_region" {
  type = string
}

variable "object_storage_endpoint_url" {
  type = string
}


# Credentials for your backup bucket

variable "backup_object_storage_bucket_name" {
  type = string
}

variable "backup_object_storage_region" {
  type = string
}

variable "backup_object_storage_access_key" {
  type = string
}

variable "backup_object_storage_secret_key" {
  type = string
  sensitive = true
}

variable "backup_object_storage_endpoint_url" {
  type = string
}


# Credentials for DB-access
variable "db_vendor" {
  type = string
}

variable "db_region" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_instance_id" {
  type = string
}

variable "db_secret_key" {
  type = string
  sensitive = true
}
