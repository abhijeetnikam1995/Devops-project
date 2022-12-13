terraform {
  backend "s3" {
    bucket         = "tf-eks2906"
    dynamodb_table = "tf-eks2906"
    key            = "terraform-aws-eks-workshop.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
