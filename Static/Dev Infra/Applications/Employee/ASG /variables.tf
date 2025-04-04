variable "region_name" {
  type        = string
  default     = "us-east-2"
  description = "name of region"
}

variable "bucket-name" {
  type        = string
  default     = "otms-tf-state-bucket"
  description = "remote bucket name"
}

variable "remote-launch-template-key" {
  type        = string
  default     = "env/dev/applications/employee/launch-template/terraform.tfstate"
  description = "path for remote lt key"
}

variable "remote-subnets-key" {
  type        = string
  default     = "env/dev/network/subnets/terraform.tfstate"
  description = "path for remote subnets"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "environment of project"
}

variable "project-name" {
  type        = string
  default     = "otms-salary"
  description = "name of project"
}

variable "resource-name" {
  type        = string
  default     = "asg"
  description = "value of resource to be created"
}

variable "application_subnet_key" {
  type        = string
  default     = "dev-otms-application-subnet"
  description = "Key for application subnet in remote state output"
}
variable "remote-tg-key" {
  type        = string
  default     = "env/dev/applications/employee/target-group/terraform.tfstate"
  description = "path for remote target group"
}
variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
  default     = "2"
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
  default     = "1"
}

variable "desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
  default     = "1"
}

variable "launch_template_version" {
  type        = string
  default     = "$Latest"
  description = "Version of the launch template to use"
}
