variable "bucketname" {}
module "bucket" {
  source      = "./buckets"
  name        = "mysoft-${var.bucketname}-us-east-1"
}
