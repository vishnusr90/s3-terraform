provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  alias      = "source"
  access_key = ""
  secret_key = ""
}

provider "aws" {
  region     = "us-west-2"
  alias      = "destination"
  access_key = ""
  secret_key = ""
}

module "s3_source" {
  source = "./module"
  bucket = var.bucket_name_1
  providers = {
    aws = aws.source
  }
}

module "s3_destination" {
  source = "./module"
  bucket = var.bucket_name_2
  providers = {
    aws = aws.destination
  }
}