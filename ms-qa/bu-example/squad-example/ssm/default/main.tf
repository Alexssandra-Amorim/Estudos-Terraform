locals {
  application = "my-application"
  squad       = "my-squad"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "my-tribe"
}

module "secret" {
  source = "module example"

  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  secret_value_string = "Example Secret"
}