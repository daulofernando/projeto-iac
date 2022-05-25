resource "aws_key_pair" "key" {
  key_name   = "key-${var.instance-name}"
  public_key = var.key

  tags = (merge(
    var.tags,
    tomap({
      "Name" = "KEY-${var.instance-name}",
    })
  ))
}