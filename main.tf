variable "instance_type" {
  default = "t2.small"
}

resource "aws_instance" "main" {
  ami           = "ami-9a562df2"
  instance_type = "${var.instance_type}"

  tags {
    Name = "terraform-module-example-${var.instance_type}"
  }
}

output "instance_id" {
  value = "${aws_instance.main.id}"
}
