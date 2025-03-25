resource "aws_lb" "alb" {
  name               = "alb-for-web-app"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_sg_id]
  subnets            = [for id in var.public_subnets: id]

    tags = {
        Name = "custom-alb"
    }
}