output "sa_role_arn" {
  description = "ARN of IAM role"
  value       = module.sa_role.sa_role_arn
}

output "sa_role_name" {
  description = "Name of IAM role"
  value       = module.sa_role.sa_role_name
}

output "sa_role_path" {
  description = "Path of IAM role"
  value       = module.sa_role.sa_role_path
}

output "sa_role_unique_id" {
  description = "Unique ID of IAM role"
  value       = module.sa_role.sa_role_unique_id
}
