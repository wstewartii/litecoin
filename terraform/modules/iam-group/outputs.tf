output "group_arn" {
  description = "ARN of the IAM group"
  value       = aws_iam_group.this.arn
}

output "group_name" {
  description = "Name of the IAM group"
  value       = aws_iam_group.this.name
}

output "policy_arn" {
  description = "ARN of the IAM group policy"
  value       = aws_iam_policy.this.arn
}

output "policy_name" {
  description = "Name of the IAM group policy"
  value       = aws_iam_policy.this.name
}
