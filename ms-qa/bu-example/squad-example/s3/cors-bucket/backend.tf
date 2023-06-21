terraform {
  backend "s3" {
    bucket = "Bucket name"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/s3/cors_bucket/terraform.tfstate"
    region = "us-east-1"
  }
}