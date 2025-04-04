output "aws_lb_listener_arn" {
  value       = aws_lb_listener.otms-alb-listener.arn
  description = "arn of the alb listener"
}
