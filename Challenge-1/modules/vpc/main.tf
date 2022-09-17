resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr_block}"

  tags = "${var.tags}"
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "${var.subnet_cidr_block}"
  availability_zone = "${var.subnet_zone}"

  tags = "${var.tags}"
}

output "vpc_id" {
  description = "ID of VPC"
  value       = aws_vpc.vpc.id
}

output "subnet_id" {
  description = "ID of Subnet"
  value       = aws_subnet.subnet.id
}