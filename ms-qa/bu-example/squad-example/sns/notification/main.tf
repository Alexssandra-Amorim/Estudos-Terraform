locals {
  name = "standard"

  application = "standard"
  squad       = "tech_cross"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "sre_funcionais"
}

module "sns-main" {
  source = "module example"

  name        = local.name
  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  policy = file("./files/policy.json")

  fifo_topic                  = false
  content_based_deduplication = false
}