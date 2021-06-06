provider "aws" {
  region = "eu-east-1"
}

terraform {
  backend "s3" {
    region = "eu-east-1"
  }
}