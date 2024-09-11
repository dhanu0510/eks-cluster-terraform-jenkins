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

variable "private_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}
