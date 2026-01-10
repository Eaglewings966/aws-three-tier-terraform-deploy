terraform {
  backend "s3" {
    bucket = "NovaTrust Bankngbucketcloud1"
    key    = "NovaTrust Bankng/prodution/terraform.tfstate"
    region = "us-west-1"
  }
}
