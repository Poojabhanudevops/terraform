output "asg_name" {
  description = "Auto Scaling Group Name"
  value       = aws_autoscaling_group.dev-otms-employee-asg.name
}

output "asg_id" {
  description = "Auto Scaling Group ID"
  value       = aws_autoscaling_group.dev-otms-employee-asg.id
}

output "asg_arn" {
  description = "Auto Scaling Group ARN"
  value       = aws_autoscaling_group.dev-otms-employee-asg.arn
}
