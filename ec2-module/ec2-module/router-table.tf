resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }

  tags = (merge(
    var.tags,
    tomap({
      "Name" = "RT-${var.instance-name}",
    })
  ))
}