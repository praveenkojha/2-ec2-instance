
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  depends_on = ["aws_s3_bucket.example"]
  }
resource "aws_s3_bucket" "example" {
bucket = "terraform-demo000"
  acl    = "private"
  }
