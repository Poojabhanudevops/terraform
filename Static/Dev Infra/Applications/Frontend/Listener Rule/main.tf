
resource "aws_lb_listener" "otms-alb-listener" {
  load_balancer_arn = data.terraform_remote_state.otms_alb_arn.outputs.alb_arn
  port              = var.alb_listener_port
  protocol          = var.alb_listener_protocol

  default_action {
    type             = var.alb_listener_action
    target_group_arn = data.terraform_remote_state.otms_frontend_tg_arn.outputs.target_group_arn

  }
}
