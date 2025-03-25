resource "aws_autoscaling_group" "web-app-asg" {
  name                      = "web-app-asg"
  max_size                  = 3
  min_size                  = 1
  desired_capacity          = 2
  health_check_type         = "ELB"
  
launch_template {
    id      = aws_launch_template.web_lt.id
    version = "$Latest"
}
    vpc_zone_identifier       = var.public_subnets
    target_group_arns         = [aws_lb_target_group.alb-target-group.arn]
}
