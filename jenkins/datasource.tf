# data "aws_ami" "amis" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name = "name"
#     # FIXME : add the name of the AMI
#     values = ["amzn2-ami-hvm-2.0.????????-x86_64-ebs"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }

data "aws_availability_zones" "available" {
  state = "available"
}
