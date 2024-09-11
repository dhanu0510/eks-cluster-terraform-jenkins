# VPC
vpc_name       = "jenkins-vpc"
vpc_cidr       = "10.16.0.0/16"
public_subnets = ["10.16.1.0/24"]

# key pair
key_name = "jenkins-key"

# EC2
instance_type = "t2.micro"
