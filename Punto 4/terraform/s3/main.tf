resource "aws_s3_bucket" "punto4_DK" {
  bucket = var.nombre_bucket
  // Omito la definición de ACL para usar la configuración privada
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.punto4_DK.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action    = "s3:*",
        Effect    = "Deny",
        Resource  = [
          "${aws_s3_bucket.punto4_DK.arn}",
          "${aws_s3_bucket.punto4_DK.arn}/*",
        ],
        Principal = "*",
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      },
    ]
  })
}
