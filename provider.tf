terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
  access_key = "AKIAXDHRNRJMLIUOPYVV"
  secret_key = "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"
}
