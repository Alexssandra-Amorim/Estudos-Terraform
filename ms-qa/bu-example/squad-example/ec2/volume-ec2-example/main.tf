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

  ami           = "ami-xxxxx"
  instance_type = "t2.micro"
  key_name      = "volume_ec2_key"
  monitoring    = false

  root_block_device = [
    {
      delete_on_termination = true
      encrypted             = true
      volume_type           = "gp3"
      throughput            = 200
      volume_size           = 20
    }
  ]

  ebs_block_device = [
    {
      delete_on_termination = true
      device_name           = "xxxx"
      volume_type           = "gp3"
      volume_size           = 20
      throughput            = 200
      encrypted             = true
    }
  ]
}