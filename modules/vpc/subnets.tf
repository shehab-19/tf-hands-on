locals {
  pub_sub_names_az = zipmap( keys(var.public-subnet-cidr_block) , slice(var.az,0,length( values(var.public-subnet-cidr_block) ) ) )
}



resource "aws_subnet" "public" {
    for_each = var.public-subnet-cidr_block
    vpc_id = aws_vpc.main.id
    cidr_block = each.value
    availability_zone = local.pub_sub_names_az[each.key]
    map_public_ip_on_launch = true
    tags = {
        Name = "public-${each.key}"
    }
}
