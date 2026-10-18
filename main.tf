resource "aws_s3_bucket" "homework" {
  bucket = var.bucket_name

  tags = {
    name        = var.bucket_name
    environment = "lab"
  }
}
