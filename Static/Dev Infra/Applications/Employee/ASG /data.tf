data "terraform_remote_state" "launch-template-id" {
  backend = "s3"

  config = {
    bucket = var.bucket-name
    key    = var.remote-launch-template-key
    region = var.region_name
  }

}

data "terraform_remote_state" "subnets_state" {
  backend = "s3"

  config = {
    bucket = var.bucket-name
    key    = var.remote-subnets-key
    region = var.region_name
  }
}

data "terraform_remote_state" "target_group" {
  backend = "s3"

  config = {
    bucket = var.bucket-name
    key    = var.remote-tg-key
    region = var.region_name
  }
}
