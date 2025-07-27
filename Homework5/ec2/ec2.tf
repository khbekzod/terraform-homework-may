provider aws {
    region = var.region
}

resource "aws_instance" "ec2" {
  ami           = var.ec2-ami
  instance_type = var.ec2-type
  subnet_id = var.subnet_id

  tags = {
    Environment = var.ec2-environment
  }
}

variable subnet_id {}
variable ec2-ami {}
variable ec2-type {}
variable ec2-environment {}

variable region {}






# variable ec2 {
#     type = list(object({
#         ami = string
#         instance-type = string
#         Environment = string
#     }))
#     default = [{
#         ami = "ami-08a6efd148b1f7504",
#         instance-type = "t2.micro",
#         Environment = "Dev"
#     }]
# }