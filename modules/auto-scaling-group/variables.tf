variable "ami" {
    type    = string
}
variable "t2_instance_type" {
    type    = string
}
variable "vpc_id" {
  type = string
}
variable "key_pair" {
  type = string
}
variable "lt_security_group" {
  type = string
}
variable "alb_sg_id" {
  type = string
}
variable "public_subnets" {
  type = list(string)
}