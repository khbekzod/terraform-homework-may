resource "aws_instance" "web-1" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.hw2-sg.id]
  key_name = aws_key_pair.bastion-key.key_name
  availability_zone = "us-west-2a"
  user_data = file("apache.sh")

  tags = {
    Name = "web-1"
  }
}

resource "aws_instance" "web-2" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.hw2-sg.id]
  key_name = aws_key_pair.bastion-key.key_name
  availability_zone = "us-west-2b"
  user_data = file("apache.sh")

  tags = {
    Name = "web-2"
  }
}

resource "aws_instance" "web-3" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.hw2-sg.id]
  key_name = aws_key_pair.bastion-key.key_name
  availability_zone = "us-west-2c"
  user_data = file("apache.sh")

  tags = {
    Name = "web-3"
  }
}

