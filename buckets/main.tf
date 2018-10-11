variable "name" {}
variable "bucketname" {}
variable "environment" {}
variable "foundation" {}
variable "costcenter" {}
variable "customerid" {}
variable "appfamily" {}
variable "platform" {}
variable "owner" {}
variable "aws_region" {}
variable "kms_key_id" {}
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
    customerid  = "${var.customerid}"
    appid       = "${var.appid}"
    partnerid   = "${var.partnerid}"
    compliance  = "${var.compliance}"
    terraform   = "True"
  }
}
