output "arn" {
  description = "ARN of the IAM user"
  value       = aws_iam_user.this.arn
}

output "name" {
  description = "Name of the IAM user"
  value       = aws_iam_user.this.name
}
