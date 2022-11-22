terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
    }
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "aws" {
  profile = "default"
  region  = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}