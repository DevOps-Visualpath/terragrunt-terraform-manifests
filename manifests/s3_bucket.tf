resource "aws_s3_bucket" "b" {
  bucket = "${var.s3_bucket_name}"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "${var.environment}"
  }
}