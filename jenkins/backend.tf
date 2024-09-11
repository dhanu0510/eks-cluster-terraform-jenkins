terraform {
  backend "s3" {
    bucket = "eks-cluster-terraform-jenkins-dhanu0510"
    key    = "terraform.tfstate"
    region = "ca-central-1"

    dynamodb_table = "eks-cluster-terraform-jenkins-dhanu0510"
  }
}
