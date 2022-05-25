resource "aws_route_table_association" "as" {
  subnet_id      = aws_subnet.sn.id
  route_table_id = aws_route_table.rt.id
}