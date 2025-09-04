terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }

  backend "s3" {
    bucket = "82s-shaik-remote-state"
    key    = "backend-infra" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "82s-state-locking"
 }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
