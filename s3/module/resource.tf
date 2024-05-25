terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

variable "bucket" {}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket

  tags = {
    Name        = "s3 bucket"
    Environment = "development"
  }
}