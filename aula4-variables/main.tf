# configura o acesso a infra
provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access}"
  secret_key = "${var.secret}"
}

resource "aws_instance" "web" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  # ipv6_addresses = "${var.ips}"
  tags = "${var.tags}"
}
