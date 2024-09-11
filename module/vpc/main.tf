module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs            = var.availability_zones_available
  public_subnets = var.public_subnets

  enable_dns_hostnames = true

  tags = {
    Name        = "jenkins-vpc"
    Server      = "jenkins"
    Terraform   = "true"
    Environment = "dev"
  }
}
