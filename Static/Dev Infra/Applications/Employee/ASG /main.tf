resource "aws_autoscaling_group" "dev-otms-employee-asg" {
  name             = local.asg-name
  desired_capacity = local.desired_capacity
  max_size         = local.max_size
  min_size         = local.min_size
  vpc_zone_identifier = [
    local.application_subnet_id
  ]
  target_group_arns = [data.terraform_remote_state.target_group.outputs.target_group_arn]


  launch_template {
    id      = data.terraform_remote_state.launch-template-id.outputs.launch_template_id
    version = var.launch_template_version
  }
}
