variable "bucketname" {}
variable "environment" {}
variable "foundation" {}
variable "costcenter" {}
variable "appfamily" {}
variable "platform" {}
variable "owner" {}
variable "aws_region" {}
variable "kms_key_id" {}

module "bucket" {
  source      = "./buckets"
  #name        = "mysoft-${var.bucketname}-us-east-1"
  name        = "${var.environment}-${var.bucketname}-${var.aws_region}"
  environment = "${var.environment}"
  foundation  = "${var.foundation}"
  costcenter  = "${var.costcenter}"
  appid       = ""
  appfamily   = "${var.appfamily}"
  platform    = "${var.platform}"
  owner       = "${var.owner}"
  aws_region  = "${var.aws_region}"
  kms_key_id  = "${var.kms_key_id}"
}
