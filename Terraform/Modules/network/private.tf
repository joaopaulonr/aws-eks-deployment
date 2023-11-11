resource "aws_subnet" "my_subnet_private01" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.21.2.0/24"
  availability_zone = var.availability_zone[0]
  tags = {
    Name = "my_private_subnet01"
  }
}

resource "aws_subnet" "my_subnet_private02" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.21.3.0/24"
  availability_zone = var.availability_zone[1]
  tags = {
    Name = "my_private_subnet02"
  }
}