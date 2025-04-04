region                      = "us-east-2"
application                 = "frontend"
env                         = "dev"
project_name                = "otms"
remote_bucket_name          = "otms-tf-state-bucket"
bucket_region_name          = "us-east-2"
remote_alb_key_path         = "env/dev/network/alb/terraform.tfstate"
remote_frontend_tg_key_path = "env/dev/applications/frontend/target-group/terraform.tfstate"
alb_listener_port           = 80
alb_listener_protocol       = "HTTP"
alb_listener_action         = "forward"
owner                       = "pooja"
