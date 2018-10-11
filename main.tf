variable "bucketname" {}
module "bucket2" {
  source      = "../buckets"
  name        = "mysoft-${var.bucketname}-us-east-1"
}
