resource "aws_eip" "eip" {
  instance = aws_instance.ec2.id
  vpc      = true

  tags = (merge(
    var.tags,
    tomap({
      "Name" = "EIP-${var.instance-name}",
    })
  ))
}
