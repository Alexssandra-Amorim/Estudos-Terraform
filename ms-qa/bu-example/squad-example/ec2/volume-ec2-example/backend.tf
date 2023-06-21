terraform {
  backend "s3" {
    bucket = "Bucket name"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/ec2/volume_ec2_example/terraform.tfstate"
    region = "us-east-1"
  }
}