variable "az" {
   
    default     = "us-east-1a"
}

variable "public-subnet-cidr_block" {
    type = map(string)
    default = {

        subnet1  = "10.0.0.0/18"
}    
}

variable "private-subnet-cidr_block" {
    type = map(string)
    default = {

        subnet1 = "10.0.128.0/18"
}
}

variable "public-rtb-name" {
    default = "public-rtb"
}

variable "private-rtb-name" {
    default = "private-rtb"
}

variable "igw-name" {
  type = string
  default = "my-igw"
}

variable "vpc-name" {
    type = string
    default = "my-vpc"
}


variable "ami" {
    default = "ami-053b0d53c279acc90"  # Ubuntu 22.04 LTS AMI in us-east-1
    type    = string
}

variable "t2-instance_type" {
    default = "t2.micro"
    type    = string
}