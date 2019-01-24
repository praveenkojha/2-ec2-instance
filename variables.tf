
# AWS Config

variable "aws_access_key" {
  default = "YOUR_ADMIN_ACCESS_KEY"
}

variable "aws_secret_key" {
  default = "YOUR_ADMIN_SECRET_KEY"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "cidr_vpc" {
  description = "CIDR block for VPC"
  default     = "172.16.0.0/16" 
  }
