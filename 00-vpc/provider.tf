terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "psr-tf-remote-state-dev"
    key    = "expense-infra-dev"
    region = "us-east-1"
    dynamodb_table = "psr-tf-remote-state-dev"
  }
    
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}