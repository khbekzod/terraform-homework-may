resource "aws_vpc" "main" {
  cidr_block       = var.vpc.cidr
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = local.common_tags

}
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[0].cidr
  availability_zone = var.subnet[0].az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet[0].name
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[1].cidr
  availability_zone = var.subnet[1].az
  map_public_ip_on_launch = true
  
  tags = {
    Name = var.subnet[1].name
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[2].cidr
  availability_zone = var.subnet[2].az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet[2].name
  }
}

resource "aws_subnet" "subnet4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[3].cidr
  availability_zone = var.subnet[3].az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet[3].name
  }
}
        


