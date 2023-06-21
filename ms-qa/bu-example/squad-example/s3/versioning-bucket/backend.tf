terraform {
  backend "s3" {
    bucket = "bucketname"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/s3/versioning_bucket/terraform.tfstate"
    region = "us-east-1"
  }
}