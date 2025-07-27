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


module ec2-1 {
    source = "../ec2"
    ec2-ami = var.ec2-ami
    ec2-type = var.ec2-type
    ec2-environment = var.ec2-environment
    region = var.region
    subnet_id = module.vpc.subnet1
}

module ec2-2 {
    source = "../ec2"
    ec2-ami = var.ec2-ami
    ec2-type = var.ec2-type
    ec2-environment = var.ec2-environment
    region = var.region
    subnet_id = module.vpc.subnet2
}

module ec2-3 {
    source = "../ec2"
    ec2-ami = var.ec2-ami
    ec2-type = var.ec2-type
    ec2-environment = var.ec2-environment
    region = var.region
    subnet_id = module.vpc.subnet3
}

variable region {
  default = ""
}

variable vpc-cidr {
    default = ""
}
variable vpc-environment {
    default = ""
}

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

variable ec2-ami {
    default = ""
}

variable ec2-type {
    default = ""
}

variable ec2-environment {
    default = ""
}



