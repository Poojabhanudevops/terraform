variable "region" {
  type        = string
  default     = "us-east-2"
  description = "enter region name"
}
variable "application" {
  type        = string
  default     = "frontend"
  description = "enter load balancer name"
}
variable "env" {
  type        = string
  default     = "dev"
  description = "enter vpc name"
}

variable "owner" {
  type        = string
  default     = "pooja"
  description = "enter owner name"
}

variable "project_name" {
  type        = string
  default     = "otms"
  description = "enter project name"
}
variable "remote_bucket_name" {
  type        = string
  default     = "otms-tf-state-bucket"
  description = "enter remote s3 bucket name"
}
variable "bucket_region_name" {
  type        = string
  default     = "us-east-2"
  description = "enter remote s3 bucket region name"
}

variable "remote_alb_key_path" {
  type        = string
  default     = "env/dev/network/alb/terraform.tfstate"
  description = "enter remote s3 bucket alb key path"
}

variable "remote_frontend_tg_key_path" {
  type        = string
  default     = "env/dev/applications/frontend/target-group/terraform.tfstate"
  description = "enter remote s3 bucket salary target group key path"
}

variable "alb_listener_port" {
  type        = number
  default     = 80
  description = " alb listener port"
}
variable "alb_listener_protocol" {
  type        = string
  default     = "HTTP"
  description = "type of Target protocol"
}
variable "alb_listener_action" {
  type        = string
  default     = "forward"
  description = "type of Target protocol"
}
