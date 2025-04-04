data "terraform_remote_state" "otms_alb_arn" {
  backend = "s3"

  config = {
    bucket = var.remote_bucket_name
    key    = var.remote_alb_key_path
    region = var.bucket_region_name
  }
}
data "terraform_remote_state" "otms_frontend_tg_arn" {
  backend = "s3"

  config = {
    bucket = var.remote_bucket_name
    key    = var.remote_frontend_tg_key_path
    region = var.bucket_region_name
  }
}
