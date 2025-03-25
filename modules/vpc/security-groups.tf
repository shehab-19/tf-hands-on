resource "aws_security_group" "web_sg" {
    name        = "web-sg"
    description = "Security group for web app"
    vpc_id      = aws_vpc.main.id
    
    # http
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        security_groups = [aws_security_group.lb_sg.id]
    }
    
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "web-security-group"
    }    
}

resource "aws_security_group" "lb_sg" {
    name        = "lb-sg"
    description = "Security group for lb"
    vpc_id      = aws_vpc.main.id
    
    # http
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "lb-security-group"
    }    
}