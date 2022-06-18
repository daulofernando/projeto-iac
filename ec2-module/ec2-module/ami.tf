data "aws_ami" "ubuntu" {

  most_recent = true

  filter {
    name   = "tag:Release"
    values = ["3.0"]
  }

  filter {
    name = "tag:Name"
    values = ["Monitoramento"]
  }

  owners = ["self"]
}
