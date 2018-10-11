variable "name" {}
resource "aws_s3_bucket" "generic" {
  bucket = "${var.name}"
  acl    = "private"
}