terraform {
  required_version = "0.15.0"

  required_providers {
    aws = {
      source  = "hashcorp/aws"
      version = "3.37.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-1233211234242"
  acl    = "private"

  tags = {
    "Name"        = "My bucket"
    "Environment" = "Dev"
    "Managedby"   = "terraform"
  }
}
