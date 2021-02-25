resource "aws_iam_user" "this" {
  name = var.name
  tags = merge({
    Name = var.name
  }, var.tags)
}
