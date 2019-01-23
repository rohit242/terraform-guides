terraform {
  required_version = ">= 0.11.7"
}

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "debian" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"

  tags {
    Name = "${var.name}"
  }
}
