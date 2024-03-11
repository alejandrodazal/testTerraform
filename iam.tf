resource "aws_iam_role" "rol_redshift_s3" {
  name = "RolRedshiftAccesoS3Punto4"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Principal = { Service = "redshift.amazonaws.com" },
      Effect    = "Allow",
      Sid       = "",
    }]
  })
}

resource "aws_iam_policy" "policy_s3_access" {
  name   = "PoliticaAccesoS3ParaPunto4"
  policy = data.aws_iam_policy_document.documento_politica_s3.json
}

resource "aws_iam_role_policy_attachment" "attach_s3_access" {
  role       = aws_iam_role.rol_redshift_s3.name
  policy_arn = aws_iam_policy.policy_s3_access.arn
}

resource "aws_iam_policy_document" "documento_politica_s3" {
  statement {
    actions   = ["s3:GetObject", "s3:ListBucket"]
    resources = [
      "${aws_s3_bucket.bucket_punto4.arn}",
      "${aws_s3_bucket.bucket_punto4.arn}/*",
    ]
  }
}

resource "aws_iam_role_policy_attachment" "attach_s3_access" {
  role       = aws_iam_role.rol_redshift_s3.name
  policy_arn = aws_iam_policy.policy_s3_access.arn
}
