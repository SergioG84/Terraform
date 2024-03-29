provider "aws" {
  region = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "first_instance" {
  ami = "${var.base_ami}"
  instance_type = "${var.instance_type}"

  tags {
    Name = "first_instance"
  }
}
