output "arn" {
  description = "ARN of the IAM group"
  value       = aws_iam_group.this.arn
}

output "name" {
  description = "Name of the IAM group"
  value       = aws_iam_group.this.name
}
