locals {
  name = "notification-bucket"

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

  sns_notifications = {
    "sns1" = {
      topic_arn     = "arn:aws:sns:us-east-1:accountID:my-squad-policy"
      events        = ["s3:ObjectRemoved:Delete"]
      filter_prefix = "prefix3/"
      filter_suffix = ".csv"
    }

    "sns2" = {
      topic_arn = "arn:aws:sns:us-east-1:035267315123accountID:my-squad-policy"
      events    = ["s3:ObjectRemoved:DeleteMarkerCreated"]
    }
  }
}
