# configura o acesso a infra
provider "aws" {
  region     = "us-east-1"
  access_key = "${var.access}"
  secret_key = "${var.secret}"
}

# configura o bucket
resource "aws_s3_bucket" "btf" {
  bucket = "curso-terraform-27042020"
  acl    = "private"
  tags = {
    Name        = "My super bucket"
    Environment = "Prod"
  }
}

# configura objeto no bucket
resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.btf.id}"
  key    = "hello_word.txt"
  source = "caminho/arquivo.txt"
  etag = "${md5(file("caminho/arquivo.txt"))}"
}

output "bucket" {
  value = "${aws_s3_bucket.btf.id}"
}

output "etag" {
  value = "${aws_s3_bucket_object.object.etag}"
}