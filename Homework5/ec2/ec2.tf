provider aws {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami           = var.ec2[0].ami
  instance_type = var.ec2[0].instance-type

  tags = {
    Environment = var.ec2[0].Environment
  }
}

variable ec2 {
    type = list(object({
        ami = string
        instance-type = string
        Environment = string
    }))
    default = [{
        ami = "ami-08a6efd148b1f7504",
        instance-type = "t2.micro",
        Environment = "Dev"
    }]
}
