output "id" {
  value       = module.sqs-main.id
  description = "SQS ID"
}

output "arn" {
  value       = module.sqs-main.*.arn
  description = "SQS ARN"
}

output "url" {
  value       = module.sqs-main.*.url
  description = "SQS URL"
}

output "redrive_policy" {
  value       = module.sqs-main.*.redrive_policy
  description = "SQS Redrive Policy"
}