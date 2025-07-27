## Homework-4 AWS - .tfvars file content:

```hcp
vpc = {
    cidr = "10.0.0.0/16"
}

subnet = [
    { cidr = "10.0.1.0/24", az = "us-east-1a", name = "subnet1"},
    { cidr = "10.0.2.0/24", az = "us-east-1b", name = "subnet2"},
    { cidr = "10.0.3.0/24", az = "us-east-1c", name = "subnet3"},
    { cidr = "10.0.4.0/24", az = "us-east-1d", name = "subnet4"}
]

igw_name = "hw4gw"
rt = [ "public-rt", "private-rt" ]
port = [ 22, 80, 3306, 443 ]

ec2 = [{
    ami = "ami-08a6efd148b1f7504"
    type = "t2.micro"
}]
```