data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = [data.aws_caller_identity.current.account_id]
    }
  }
}

resource "aws_iam_role" "this" {
  name = var.role_name

  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  tags = merge({
    Name = var.role_name
  }, var.tags)
}
