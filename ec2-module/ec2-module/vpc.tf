resource "aws_vpc" "vpc" {
  cidr_block = "172.31.0.0/16"

  enable_dns_hostnames = true

  tags = (merge(
    var.tags,
    tomap({
      "Name" = "VPC-${var.instance-name}",
    })
  ))
}