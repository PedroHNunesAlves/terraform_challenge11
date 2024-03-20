terraform {
  backend "s3" {
    bucket = "symp-tombstone-silver"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

