terraform {
  backend "s3" {
    bucket = "bucket name"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/s3/request_payer_bucket/terraform.tfstate"
    region = "us-east-1"
  }
}