provider "aws" {
  region     = "us-east-1"
  access_key = "${var.access}"
  secret_key = "${var.secret}"
}

resource "aws_s3_bucket" "btf" {
  bucket = "curso-terraform-27042020"
  acl    = "private"

  tags = {
    Name        = "My super bucket"
    Environment = "Prod"
  }
}