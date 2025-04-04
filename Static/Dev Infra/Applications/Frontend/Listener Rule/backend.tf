terraform {
  backend "s3" {
    bucket         = "otms-tf-state-bucket"
    key            = "env/dev/applications/frontend/listener-rule/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dev-otms-tf-lock-table"

  }
}
