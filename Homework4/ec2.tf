resource "aws_instance" "instance-1" {
  ami           = var.ec2[0].ami
  instance_type = var.ec2[0].type
  subnet_id = aws_subnet.subnet1.id

  tags = local.common_tags
  key_name = aws_key_pair.bastion.key_name
}
