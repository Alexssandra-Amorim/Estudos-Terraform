output "id" {
  value       = module.sns-main.id
  description = "SNS ID"
}

output "arn" {
  value       = module.sns-main.*.arn
  description = "SNS ARN"
}