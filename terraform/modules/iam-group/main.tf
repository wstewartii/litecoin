resource "aws_iam_group" "this" {
  name = var.name
}

resource "aws_iam_group_membership" "this" {
  group = var.name
  name  = var.name
  users = var.users
}

data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"
    actions = ["sts:AssumeRole"]
    resources = var.roles

  }
}

resource "aws_iam_group_policy_attachment" "this" {
  group      = aws_iam_group.this.id
  policy_arn = data.aws_iam_policy_document.this.id
}
