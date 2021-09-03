terraform {
  required_version = "~>0.12.31"
  backend "s3" {
    bucket = "xmlab-terraform"
    key    = "sandbox/test-2.tf"
    region = "ap-southeast-1"
  }
  
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.2.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test2"
  }
}
