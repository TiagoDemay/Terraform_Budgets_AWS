provider "aws" {
  region  = "us-east-1"
  version = "~>2.8"
}

terraform {
  backend "s3" {
    bucket  = "terraform-budget-org"
    key     = "terraform.tsstate"
    region  = "us-east-1"
    encrypt = true
  }
}