module "sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "jenkins-security-group"
  description = "Security group for Jenkins server"
  vpc_id      = var.vpc_id


  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "Jenkins web interface"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "All traffic"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  tags = {
    Name        = "jenkins-security-group"
    Server      = "jenkins"
    Terraform   = "true"
    Environment = "dev"
  }
}
