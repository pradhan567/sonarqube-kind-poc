terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
#   backend "s3" {
#     bucket       = "terra-state-storage-bucket"
#     key          = "terraform/state"
#     region       = "ap-south-1"
#     use_lockfile = true
#   }
# }

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}