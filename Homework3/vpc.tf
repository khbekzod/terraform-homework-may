resource "aws_vpc" "kaizen" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "kaizen"
  }
}
