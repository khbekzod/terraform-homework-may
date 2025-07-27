provider aws {
    region = var.region
}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc-cidr
  
  tags = {
    Environment = var.vpc-environment
  }
}


resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[0].cidr
  availability_zone = var.subnet[0].az

  tags = {
    Environment = var.subnet[0].Environment
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[1].cidr
  availability_zone = var.subnet[1].az
  
  tags = {
    Environment = var.subnet[1].Environment
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[2].cidr
  availability_zone = var.subnet[2].az
  

  tags = {
    Environment = var.subnet[2].Environment
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "hw5igw"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/16"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route-table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.subnet3.id
  route_table_id = aws_route_table.rt.id
}

variable region {}
variable vpc-cidr {}
variable vpc-environment {}


variable subnet {
  type = list(object({
    cidr = string
    az = string
    Environment = string
  }))
  default = [
    { cidr = "", az = "", Environment = ""},
    { cidr = "", az = "", Environment = ""},
    { cidr = "", az = "", Environment = ""},
   ] 
}

output subnet1 {
    value = aws_subnet.subnet1.id
}

output subnet2 {
    value = aws_subnet.subnet2.id
}
output subnet3 {
    value = aws_subnet.subnet3.id
}



# variable vpc {
#   type = list(object({
#     cidr_block = string
#     Environment = string
#   }))
#   default = [{
#     cidr_block = "10.0.0.0/16"
#     Environment = "Dev"
#   }]
# }