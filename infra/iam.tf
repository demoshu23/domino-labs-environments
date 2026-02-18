resource "aws_iam_role" "domino_compute" {
  name = "domino-compute-role"
  assume_role_policy = data.aws_iam_policy_document.assume.json
}

resource "aws_iam_role_policy_attachment" "s3_access" {
  role       = aws_iam_role.domino_compute.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
