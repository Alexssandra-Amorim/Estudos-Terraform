output "id" {
  value       = module.aws_instance.id
  description = "Instance ID"
}

output "arn" {
  value       = module.aws_instance.*.arn
  description = "Instance ARN"
}

output "public_ip" {
  value       = module.aws_instance.*.public_ip
  description = "Instance public IP"
}

output "private_ip" {
  value       = module.aws_instance.*.private_ip
  description = "Instance private IP"
}

output "public_key" {
  value       = module.aws_instance.*.public_key
  description = "Instance public key name"
  sensitive   = true
}

output "key_name" {
  value       = module.aws_instance.*.key_name
  description = "Instance public key name"
}