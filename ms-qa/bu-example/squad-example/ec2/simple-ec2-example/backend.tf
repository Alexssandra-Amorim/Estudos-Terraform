terraform {
  backend "s3" {
    bucket = "bucket name"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/ec2/simple_ec2_example/terraform.tfstate"
    region = "us-east-1"
  }
}