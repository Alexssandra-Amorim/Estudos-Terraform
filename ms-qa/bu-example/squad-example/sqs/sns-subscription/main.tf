locals {
  name = "sns-subscription"

  application = "sns-subscription"
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

  sns_topic = {
    "0" = {
      "arn" : "arn:aws:sns:us-east-1:accountID:example.fifo",
      "filter_policy" : ""
      "raw_message_delivery" : false
    }
  }
}