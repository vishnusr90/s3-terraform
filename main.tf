terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = "XXX"
  secret_key = "XXX"
}

resource "aws_s3_bucket" "source_bucket" {
  bucket = "my-first-bucket-us-east-1"

  tags = {
    Name        = "s3 bucket"
    Environment = "development"
  }
}