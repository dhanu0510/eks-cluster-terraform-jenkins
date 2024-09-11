terraform {
  backend "s3" {
    bucket = "eks-cluster-terraform-jenkins-dhanu0510"
    key    = "eks/terraform.tfstate"
    region = "ca-central-1"
  }
}
