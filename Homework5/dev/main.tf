provider aws {
    region = var.region
}

module vpc {
    source = "../vpc"
    vpc-cidr = var.vpc-cidr
    vpc-environment = var.vpc-environment
    subnet = var.subnet
    region = var.region
}

variable region {
  default = "us-east-2"
}

variable vpc-cidr {
    default = "10.0.0.0/16"
}
variable vpc-environment {
    default = "Dev"
}

variable subnet {
  type = list(object({
    cidr = string
    az = string
    Environment = string
  }))
 default = [
   { cidr = "10.0.1.0/24", az = "us-east-2a", Environment = "Dev"},
   { cidr = "10.0.2.0/24", az = "us-east-2b", Environment = "Dev"},
   { cidr = "10.0.3.0/24", az = "us-east-2c", Environment = "Dev"},
  ]
}

module ec2 {
    source = "../ec2"
    ec2-ami = var.ec2-ami
    ec2-type = var.ec2-type
    ec2-environment = var.ec2-environment
    region = module.vpc.subnet1
}

variable ec2-ami {
    default = "ami-08ca1d1e465fbfe0c"
}

variable ec2-type {
    default = "t2.micro"
}

variable ec2-environment {
    default = "Dev"
}



