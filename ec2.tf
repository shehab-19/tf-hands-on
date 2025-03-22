# resource "aws_key_pair" "my_key" {
#     key_name   = "my_key"
#     public_key = file("~/.ssh/aws-keypair.pub")
# }

# resource "aws_instance" "web_server" {
#     ami           = var.ami
#     instance_type = var.t2-instance_type
#     subnet_id = aws_subnet.public["subnet1"].id
#     key_name = aws_key_pair.my_key.key_name
    
#     user_data = <<-EOF
#                             #!/bin/bash
#                             sudo apt update -y
#                             sudo apt install apache2 -y
#                             EOF

#     tags = {
#         Name = "web-server"
#     }

#     vpc_security_group_ids = [aws_security_group.web_sg.id]
# }