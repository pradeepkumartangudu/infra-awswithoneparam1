variable "name" {}
variable "environment" {}
variable "foundation" {}
variable "costcenter" {}
variable "appfamily" {}
variable "platform" {}
variable "owner" {}
variable "aws_region" {}
variable "kms_key_id" {}
variable "appid" {}
resource "aws_s3_bucket" "generic" {
  bucket = "${var.name}"
  acl    = "private"
  tags {
    Name        = "${var.name}"
    environment = "${var.environment}"
    foundation  = "${var.foundation}"
    costcenter  = "${var.costcenter}"
    appfamily   = "${var.appfamily}"
    owner       = "${var.owner}"
    appid       = "${var.appid}"
    terraform   = "True"
  }
}
