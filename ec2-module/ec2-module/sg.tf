resource "aws_security_group" "sg" {
  name        = "SG-${var.instance-name}"
  vpc_id      = aws_vpc.vpc.id
  description = "Gerenciado por Terraform"

  # dynamic "ingress" {
  #   for_each = var.sg-rules
  #   content {
  #     description = var.sg-rules.description
  #     from_port   = var.sg-rules.porta
  #     to_port     = var.sg-rules.porta
  #     protocol    = var.sg-rules.protocolo
  #     cidr_blocks = var.sg-rules.ips
  #   }
  # }

  ingress {
    description = "Acesso SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = (merge(
    var.tags,
    tomap({
      "Name" = "SG-${var.instance-name}",
    })
  ))
}