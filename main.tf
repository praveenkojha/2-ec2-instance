
#resource "aws_instance" "example" {
#  ami           = "ami-b374d5a5"
#  instance_type = "tr2.micro"
# depends_on       = ["aws_s3_bucket.example"]
#tags {
#  name = "test-instance"
#  }
#}

#resource "aws_s3_bucket" "example" {
#  bucket = "example-bucket"
#  acl    = "private"
#}

#CIDR block for the VPC
resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_vpc}"
  enable_dns_support   = true
  enable_dns_hostnames = true
tags = {
 Name = "vpc-demo"
 }
}

#CIDR block for the SUBNET
resource "aws_subnet" "subnet_public" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.cidr_subnet}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availability_zone}"
tags = {
 Name = "vpc-demo-subnet-public"
 }
}
 
#"internet gateway associated with VPC"
resource "aws_internet_gateway"  "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags = {
   Name = "cidr-igw" 
  } 
}

