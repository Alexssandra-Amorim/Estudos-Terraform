locals {
  name = "fifo-queue"

  application = "fifo-queue"
  squad       = "my-squad"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "my-tribe"
}

module "sqs-main" {
  source = "module example"

  name        = local.name
  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  fifo_queue = true
  create_dlq = true

  max_receive_count = 10
}