terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "satyajeet_infra_bucket" {
  bucket = "satyajeet-proj11-base-bucket"

  tags = {
    Environment = "Production"
    Owner       = "Satyajeet"
  }
}
