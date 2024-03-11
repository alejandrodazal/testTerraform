resource "aws_redshift_cluster" "cluster_punto4" {
  cluster_identifier = "redshift-cluster-punto4"
  database_name      = "dbpunto4"
  master_username    = var.master_username
  master_password    = var.master_password
  node_type          = "dc2.large"
  cluster_type       = "single-node"

  skip_final_snapshot = true

  iam_roles = [aws_iam_role.rol_redshift_s3.arn]
}
