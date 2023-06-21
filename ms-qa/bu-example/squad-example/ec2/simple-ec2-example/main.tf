locals {
  name = "simple_ec2_example"

  application = "simple_ec2_example"
  squad       = "squad_example"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "tribe_example"
}

module "aws_instance" {
  source = "module example"

  name = local.name

  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  ami           = "ami-xxxx"
  instance_type = "t2.micro"
  key_name      = "simple_ec2_key"
  monitoring    = false
}