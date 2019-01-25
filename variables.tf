# AWS Config

variable "aws_access_key" {
  default = "AKIAI4NRGP6NIBIIWB4Q"
  }

variable "aws_secret_key" {
  default = "FXelHOGOhNPEBN3t2OeTY4Nk0+S2f075PLVKdx/V"
  }

variable "aws_region" {
  default = "us-east-1"
  }
 
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
#  default = "10.1.0.0/16"
   default = "172.16.0.0/16"
  }

variable "cidr_subnet" {
  description = "CIDR block for the SUBNET"
  default     = "172.16.1.0/24"
   }

variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "us-east-1a"
}

variable "aws_internet_gateway" " {
  description = "internet gateway associated with VPC"
  }
 }
