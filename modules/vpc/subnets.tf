resource "aws_subnet" "public" {
    for_each = var.private-subnet-cidr_block
    vpc_id = aws_vpc.main.id
    cidr_block = each.value
    availability_zone = var.az
    map_public_ip_on_launch = true
    tags = {
        Name = "public-${each.key}"
    }
}
