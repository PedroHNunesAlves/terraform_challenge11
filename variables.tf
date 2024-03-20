variable "region" {
  default = "us-east-1"
}

variable "cidr-block-vpc" {
  default = "10.0.0.0/16"
}

variable "tenancy" {
  default = "default"
}

variable "availability-zone" {
  default = "us-east-1a"
}

variable "cidr-block-subnet1" {
  default = "10.0.0.0/24"
}

variable "cidr-block-subnet2" {
  default = "10.0.2.0/24"
}

variable "publicCIDR" {
  default = "0.0.0.0/0"
}

variable "bucket-name" {
  default = "symp-tombstone-silver"
}

