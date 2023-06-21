locals {
  name = "sgid_subnetid_ec2_example"

  application = "sgid_subnetid_ec2_example"
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
  key_name      = "sgid_subnetid_ec2_key"
  monitoring    = false

  vpc_security_group_ids = ["sg-xxxxx"]
  subnet_id              = "subnet-xxxxx"

  associate_public_ip_address = true
}