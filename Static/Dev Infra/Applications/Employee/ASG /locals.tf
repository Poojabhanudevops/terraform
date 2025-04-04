locals {
  asg_name               = "${var.environment}-${var.project-name}-${var.resource-name}"
  desired_capacity       = var.desired_capacity
  max_size               = var.max_size
  min_size               = var.min_size
  application_subnet_id  = data.terraform_remote_state.subnets_state.outputs.subnet_ids[var.application_subnet_key]
}
