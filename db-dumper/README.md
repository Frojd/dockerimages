# DB-dumper

## Description
This docker container exports db-instances and uploads them to any s3-compatible storage.

The intended usage backups, and is built to run daily (or your desired frequency)
on serverless/kubernetes and store a database backup in a bucket in another region
and/or vendor

To run it locally, just create your ./config/variables.yml and run like:
```
docker pull ghcr.io/frojd/dockerimages/db-dumper
docker run --rm -it -v /local/path/to/variables.yml:/home/app/variables.yml dockerimages/db-dumper
```

## Development
Get started easily with:
1) `make init`
2) Create a `./config/variables.yml` with credentials to your favorite bucket
3) run `make scaleway_db_to_bucket`

## Recepies

### Terraform/Kubernetes setup
The `recepies` folder contains a module, which you can copy in
to your terraform project and use like:
```
module "backup_jobs" {
  source = "../modules/backup_jobs"
  ...
  variables from variables.tf
  ...
}
```

In addition to dumping DB-to a storage, this also creates a nightly job copying an
s3 bucket to another bucket, replicating assets as well.
