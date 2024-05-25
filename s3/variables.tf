variable "bucket_names_with_region" {
  type = list(object({
    bucket_name = string
    region      = string
  }))
  default = [{
    bucket_name = "source_bucket"
    region      = "us-east-1"
    },
    {
      bucket_name = "destination_bucket"
      region      = "us-west-2"
  }]
}