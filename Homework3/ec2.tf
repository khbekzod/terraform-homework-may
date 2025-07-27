resource "aws_instance" "ubuntu" {
  ami           = "ami-05f991c49d264708f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data = file("apache_ubuntu.sh")

  tags = {
    Name = "Ubuntu"
  }
}

resource "aws_instance" "amazon" {
  ami           = "ami-0be5f59fbc80d980c"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public2.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data = file("apache_amazon.sh")
  
  tags = {
    Name = "Amazon"
  }
}

output "ubuntu" {
    value = aws_instance.ubuntu.public_ip 
}

output "amazon" {
    value = aws_instance.amazon.public_ip 
}