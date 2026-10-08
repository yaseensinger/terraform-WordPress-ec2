terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "tf-test-state-430758392527-eu-west-1-an"
    key = "terraform.state"
    region = "eu-west-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

