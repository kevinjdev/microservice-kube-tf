# resource "aws_vpc" "vpc" {
#   cidr_block           = "10.0.0.0/16"
#   enable_dns_support   = true
#   enable_dns_hostnames = true

#   tags = var.required_tags
# }

# resource "aws_subnet" "public_subnet_a" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "${var.aws_region}a"

#   tags = var.required_tags
# }

# resource "aws_subnet" "public_subnet_b" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = "${var.aws_region}b"

#   tags = var.required_tags
# }

# resource "aws_subnet" "private_subnet_a" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.3.0/24"
#   availability_zone = "${var.aws_region}a"

#   tags = var.required_tags
# }

# resource "aws_subnet" "private_subnet_b" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.4.0/24"
#   availability_zone = "${var.aws_region}b"

#   tags = var.required_tags
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.vpc.id

#   tags = var.required_tags
# }

# resource "aws_route_table" "public_route_table" {
#   vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = aws_vpc.vpc.cidr_block
#     gateway_id = "local"
#   }

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }

#   tags = var.required_tags
# }

# resource "aws_route_table_association" "public_subnet_a_association" {
#   subnet_id      = aws_subnet.public_subnet_a.id
#   route_table_id = aws_route_table.public_route_table.id
# }

# resource "aws_route_table_association" "public_subnet_b_association" {
#   subnet_id      = aws_subnet.public_subnet_b.id
#   route_table_id = aws_route_table.public_route_table.id
# }

# resource "aws_eip" "nat_eip" {
#   domain = "vpc"

#   tags = var.required_tags
# }

# resource "aws_nat_gateway" "nat_gateway" {
#   allocation_id = aws_eip.nat_eip.id
#   subnet_id     = aws_subnet.public_subnet_a.id

#   tags = var.required_tags
# }

# resource "aws_route_table" "private_route_table" {
#   vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = aws_vpc.vpc.cidr_block
#     gateway_id = "local"
#   }

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.nat_gateway.id
#   }

#   tags = var.required_tags
# }

# resource "aws_route_table_association" "private_subnet_a_association" {
#   subnet_id      = aws_subnet.private_subnet_a.id
#   route_table_id = aws_route_table.private_route_table.id
# }

# resource "aws_route_table_association" "private_subnet_b_association" {
#   subnet_id      = aws_subnet.private_subnet_b.id
#   route_table_id = aws_route_table.private_route_table.id
# }
