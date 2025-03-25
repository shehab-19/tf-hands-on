# resource "aws_lb" "alb" {
#   name               = "alb-for-web-app"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.lb_sg.id]
#   subnets            = [for subnet in aws_subnet.public : subnet.id]

#     tags = {
#         Name = "custom-alb"
#     }
# }