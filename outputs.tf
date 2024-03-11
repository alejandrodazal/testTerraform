output "nombre_bucket_s3" {
  value       = aws_s3_bucket.bucket_punto4.bucket
  description = "El nombre del bucket de S3 creado para el punto 4."
}

output "endpoint_redshift" {
  value       = aws_redshift_cluster.cluster_punto4.endpoint
  description = "El endpoint para conectar al clúster de Redshift del punto 4."
}
