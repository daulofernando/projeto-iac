output "public_ip" {
  value = aws_eip.eip.public_ip
}

output "instance-name" {
  value = var.instance-name
}

output "availability-zone" {
  value = aws_instance.ec2.availability_zone
}

output "instance-type" {
  value = aws_instance.ec2.instance_type
}
