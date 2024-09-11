variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the EC2 key pair"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instance"
  type        = list(string)
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
  type        = string
}
