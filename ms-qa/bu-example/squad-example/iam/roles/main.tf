locals {
  name = "standard-sa-role"

  application = "my-app"
  squad       = "my-squad"
  environment = "qa"
  bu          = "tech_cross"
  tribe       = "my-tribe"

  oidc_url    = "oidc.eks.us-east-1.amazonaws.com/xxxxx"
}

module "sa_role" {
  source    = "module example"
  role_name = local.name

  application = local.application
  squad       = local.squad
  environment = local.environment
  bu          = local.bu
  tribe       = local.tribe

  allow_self_assume_role = true
  oidc_url               = local.oidc_url

  condition = {
    "AwsResourcesSA" = {
      oidc_url             = local.oidc_url
      condition            = "StringLike"
      variable_prefix      = "sub"
      condition_value      = "system:serviceaccount:my-namespace:my-service*"
    }

    "AWSsts" = {
      oidc_url             = local.oidc_url
      condition            = "StringEquals"
      variable_prefix      = "aud"
      condition_value      = "sts.amazonaws.com"
    }
  }

  role_policy_arns = {
    StandardPolicy = "arn:aws:iam::acountIDxxx:policy/standard-policy"
  }
}