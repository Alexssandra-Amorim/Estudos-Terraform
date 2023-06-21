output "id" {
  value       = module.s3.id
  description = "Bucket ID."
}

output "arn" {
  value       = module.s3.arn
  description = "Bucket ARN."
}

output "bucket_domain_name" {
  value       = module.s3.bucket_domain_name
  description = "Bucket Domain name."
}

output "hosted_zone_id" {
  value       = module.s3.hosted_zone_id
  description = "Route 53 Hosted Zone ID for this bucket's region."
}

output "region" {
  value       = module.s3.region
  description = "The AWS region this bucket resides in."
}

output "website_endpoint" {
  value       = module.s3.website_endpoint
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
}

output "website_domain" {
  value       = module.s3.website_domain
  description = "The domain of the website endpoint, if the bucket is configured with a website."
}
