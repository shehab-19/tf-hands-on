resource "aws_launch_template" "web_lt" {
  name = "web-lt"
  image_id      = var.ami 
  instance_type = var.t2_instance_type
  key_name      = var.key_pair


  user_data = base64encode(<<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt install -y apache2
              sudo systemctl start apache2
              EOF
  )

  network_interfaces {
    associate_public_ip_address = true  
    security_groups = [var.lt_security_group]
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "Web-Instance"
    }
  }
}
