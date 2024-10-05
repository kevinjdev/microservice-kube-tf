terraform {
  backend "s3" {
    bucket         = aws_s3_bucket.terraform_state.name
    key            = "/tf/${terraform.workspace}/terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
    dynamodb_table = aws_dynamodb_table.terraform_locks.name
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
