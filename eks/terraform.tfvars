vpc_name = "eks-vpc"
vpc_cidr = "10.17.0.0/16"
public_subnets = [
  "10.17.16.0/24",
  "10.17.17.0/24",
  "10.17.18.0/24"
]

private_subnets = [
  "10.17.19.0/24",
  "10.17.20.0/24",
  "10.17.21.0/24"
]

cluster_name = "eks-cluster"
