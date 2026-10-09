terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "terraform-wordpress-state-430758392522-eu-west-1"
    key = "terraform.tfstate"
    region = "eu-west-1"
    use_lockfile = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

