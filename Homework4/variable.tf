variable vpc {
    type = object({
      cidr = string
    })
    default = {
      cidr = ""
    }
}

variable subnet {
  type = list(object({
    cidr = string
    az = string
    name = string
}))
  default = [
    {
    cidr = ""
    az = ""
    name = ""
  },
      {
    cidr = ""
    az = ""
    name = ""
  },
      {
    cidr = ""
    az = ""
    name = ""
  },
     {
    cidr = ""
    az = ""
    name = ""
      },
  ]
}

variable igw_name {
  type = string
  default = ""
}

variable rt {
    type = list(string)
    default = []
}

variable port {
  type = list(number)
  default = []
}

variable ec2 {
  type = list(object({
    ami = string
    type = string
  }))
  default = [{
    ami = ""
    type = ""
  }]
}