terraform {
  backend "local" {}
  required_version = ">= 0.14"
}

provider "aws" {
  region = "us-west-2"
}

locals {
  system_name = "vouch-operations"
}