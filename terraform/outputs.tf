output "user_arn" {
  description = "ARN of the IAM user"
  value       = module.user.arn
}

output "user_name" {
  description = "Name of the IAM user"
  value       = module.user.name
}
output "group_arn" {
  description = "ARN of the IAM group"
  value       = module.group.arn
}

output "group_name" {
  description = "Name of the IAM group"
  value       = module.group.name
}
output "role_arn" {
  description = "ARN of the IAM role"
  value       = module.role.arn
}

output "role_name" {
  description = "Name of the IAM role"
  value       = module.role.name
}
