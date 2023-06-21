locals {
  name = "object-lock-bucket"

  application = "my-instance"
  squad       = "my-squad"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "my-tribe"
}

module "s3" {
  source = "module example"

  name = local.name

  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  force_destroy       = false
  object_lock_enabled = true

  object_lock_configuration = {
    rule = {
      default_retention = {
        mode = "GOVERNANCE"
        days = 1
      }
    }
  }
}
