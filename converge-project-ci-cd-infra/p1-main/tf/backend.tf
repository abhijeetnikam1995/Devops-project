terraform {
  backend "s3" {
    bucket         = "tf-state-hct-converge"
    key            = "terraform-aws-hct-c.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}
