terraform {
  backend "s3" {
    bucket = "bucket"
    key    = "AWS/ms-qa/us-east-1/bu_example/squad_example/iam/roles/standard_sa_role/terraform.tfstate"
    region = "us-east-1"
  }
}