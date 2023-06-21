locals {
  name = "complete_ec2_example"

  application = "complete_ec2_example"
  squad       = "squad_example"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "tribe_example"

  user_data = <<-EOT
  #!/bin/bash
  echo "Hello Terraform!"
  EOT
}

module "aws_instance" {
  source = "module example "

  name = local.name

  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  ami               = "ami-xxx"
  instance_type     = "c5.4xlarge"
  availability_zone = "us-east-1e"
  key_name          = "complete_ec2_key"
  monitoring        = false

  vpc_security_group_ids      = ["sg-xxx"]
  subnet_id                   = "subnet-xxx"
  associate_public_ip_address = true


  hibernation = true

  user_data_base64            = base64encode(local.user_data)
  user_data_replace_on_change = true

  cpu_core_count       = 2
  cpu_threads_per_core = 1

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
      device_name           = "xxx"
      volume_type           = "gp3"
      volume_size           = 20
      throughput            = 200
      encrypted             = true
    }
  ]
}
