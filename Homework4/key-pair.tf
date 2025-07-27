resource "aws_key_pair" "bastion" {
  key_name   = "key-pair-bastion"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = local.common_tags
}
