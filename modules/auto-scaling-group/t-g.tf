# resource "aws_lb_target_group" "alb-target-group" {
#   name        = "alb-target-group"
#   target_type = "instance"
#   port        = 80
#   protocol    = "HTTP"
#   vpc_id      = aws_vpc.main.id
# }


# # attach target group to the ALB
# resource "aws_lb_listener" "alb-listener" {
#   load_balancer_arn = aws_lb.alb.arn
#   port              = 80
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.alb-target-group.arn
#   }
  
# }


