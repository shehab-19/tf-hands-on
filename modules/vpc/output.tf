output "vpc_id" {
    value = aws.vpc.main.id
}
output "keypair" {
    value = aws_key_pair.my_key.key_name
}