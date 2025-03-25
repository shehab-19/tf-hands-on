output "vpc_id" {
    value = aws_vpc.main.id
}
output "keypair" {
    value = aws_key_pair.my_key.key_name
}
output "web_sg_id" {
    value = aws_security_group.web_sg.id
}
output "lb_sg_id" {
    value = aws_security_group.lb_sg.id
}
output "public_subnets_id" {
    value = values(aws_subnet.public)[*].id
}