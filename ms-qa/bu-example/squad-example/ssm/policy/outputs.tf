output "id" {
  value       = module.secret.id
  description = "SSM ID"
}

output "arn" {
  value       = module.secret.*.arn
  description = "SSM ARN"
}