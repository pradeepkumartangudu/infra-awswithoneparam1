######
# Connecting with AWS
#


#####
# Provider
#
provider "aws" {
  region     = "us-east-1"
}


######
# Backend
# This can't have interpolations which kinda sucks
terraform {
  backend "s3" {
    bucket = "srimanideepsoft-us-east-1"
#    key    = "runtime/bucket1/terraform.tfstate"
    region = "us-east-1"
	encrypt = true
	kms_key_id    = "arn:aws:kms:us-east-1:501458760236:key/73c2301b-d719-4ef4-a65b-9da5422398a6"
  }
}
