resource "aws_s3_bucket" "bucket_punto4" {
  bucket = "taller-punto4-${random_pet.punto4s3.id}"
  tags = {
    Nombre = "BucketParaPunto4"
  }
}
