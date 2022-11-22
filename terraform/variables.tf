variable "cloudflare_api_token" {
  type = string
  sensitive = true
}

variable "cloudflare_zone_id" {
  type = string
}

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}

variable "region" {
     default     = "us-east-2"
     description = "AWS Region"
}

variable "db_name" {
  type = string
}

variable "username" {
  type = string
}

variable "db_password" {
  type = string
  sensitive = true  
}