#VPC
module "vpc" {
  source = "../module/vpc"

  vpc_cidr                     = var.vpc_cidr
  availability_zones_available = data.aws_availability_zones.available.names
  public_subnets               = var.public_subnets
  vpc_name                     = var.vpc_name
}

# Security Group
module "sg" {
  source = "../module/sg"

  vpc_id = module.vpc.vpc_id
}

# Key Pair
module "key_pair" {
  source = "../module/key_pair"

  key_name = var.key_name
}

# EC2
module "ec2" {
  source = "../module/ec2"

  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [module.sg.sg_id]
  subnet_id              = module.vpc.subnet_id
}
