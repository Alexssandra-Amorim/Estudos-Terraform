terraform {
  backend "s3" {
    bucket = "buckte name"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/s3/public_access_block_bucket/terraform.tfstate"
    region = "us-east-1"
  }
}