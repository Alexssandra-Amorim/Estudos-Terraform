locals {
  name = "cors-bucket"

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
  object_lock_enabled = false

  cors_rule = [
    {
      allowed_methods = ["PUT", "POST"]
      allowed_origins = ["https://modules.tf", "https://terraform-aws-modules.modules.tf"]
      allowed_headers = ["*"]
      expose_headers  = ["ETag"]
      max_age_seconds = 3000
    },
    {
      allowed_methods = ["PUT"]
      allowed_origins = ["https://example.com"]
      allowed_headers = ["*"]
      expose_headers  = ["ETag"]
      max_age_seconds = 3000
    }
  ]
}
