resource "aws_subnet" "sn" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.31.1.0/24"
  availability_zone = var.availability-zone

  tags = (merge(
    var.tags,
    tomap({
      "Name" = "SN-${var.instance-name}",
    })
  ))
}