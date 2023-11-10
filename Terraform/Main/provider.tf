terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
  backend "s3" {
    bucket = "aws-eks-deplyment-joaopaulonr"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}