resource "aws_s3_bucket" "source_bucket" {
  for_each = var.bucket_names_with_region

  bucket = each.value.bucket_name

  tags = {
    Name        = "s3 bucket"
    Environment = "development"
  }
}