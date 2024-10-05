terraform {
  backend "s3" {
    bucket         = "microservice-kube-tf-state-469136862772-us-east-2"
    key            = "terraform-state/${terraform.workspace}/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "teraform-lock-table"
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
