resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "publicsubnet1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/16"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  
}


resource "aws_subnet" "publicsubnet2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/16"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}


resource "aws_subnet" "privatesubnet1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/16"
  availability_zone = "us-east-1a"
}
