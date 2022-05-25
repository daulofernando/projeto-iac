resource "aws_instance" "ec2" {
  ami                    = var.ami-packer
  availability_zone      = var.availability-zone
  instance_type          = var.instance-type
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  key_name               = "key-${var.instance-name}"
  subnet_id              = aws_subnet.sn.id
  volume_tags = {
    "Name" = "VOL-${var.instance-name}"
  }
  tags = (merge(
    var.tags,
    tomap({
      "Name" = var.instance-name,
    })
  ))

  root_block_device {
    volume_size           = "15"
    volume_type           = "gp2"
    encrypted             = false
    delete_on_termination = true
  }
}

