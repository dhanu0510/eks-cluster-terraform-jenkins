# VPC
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

# key pair
variable "key_name" {
  description = "The name of the EC2 key pair"
  type        = string
}

# EC2
variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}
