provider "aws" {
  region = var.region
}

module "s3_punto4_DK" {
  source        = "./s3"
  nombre_bucket = var.punto4_bucket
}
