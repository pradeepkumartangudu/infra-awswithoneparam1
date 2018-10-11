variable "bucketname" {}

module "bucket1" {
  source      = "../buckets"
  name        = "mysoft-${var.bucketname}-us-east-1"
}
