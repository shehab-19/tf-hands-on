# Create EC2 instance with Apache2
resource "aws_instance" "web_server" {
    ami           = var.ami
    instance_type = var.t2-instance_type
    subnet_id = aws_subnet.public["subnet1"].id
    
    user_data = <<-EOF
                            #!/bin/bash
                            sudo apt update -y
                            sudo apt install apache2 -y
                            EOF

    tags = {
        Name = "web-server"
    }

    vpc_security_group_ids = [aws_security_group.web_sg.id]
}