output "bucket_arn" {
  description = "ARN del bucket de S3"
  value       = aws_s3_bucket.punto4_DK.arn
}

output "bucket_nombre" {
  description = "Nombre del bucket de S3"
  value       = aws_s3_bucket.punto4_DK.bucket
}
