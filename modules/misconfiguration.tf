data "aws_iam_policy_document" "bad" {
  statement {
    actions = [
      "apigateway:*",
    ]

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_policy" "bad_configuration" {
  name_prefix = local.setup_role_name
  policy      = data.aws_iam_policy_document.bad.json
}
