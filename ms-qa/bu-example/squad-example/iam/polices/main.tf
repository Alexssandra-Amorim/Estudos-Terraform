locals {
  name = "standard-policy"

  application = "my-app"
  squad       = "my-squad"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "my-tribe"
}

module "policy" {
  source = "module example"

  name = local.name

  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  path = "/"
  description = "Testing the standard policy"

  policy = file("./files/policy.json")
}
