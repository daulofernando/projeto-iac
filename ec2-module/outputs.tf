output "ip" {
  value = module.ec2.public_ip
}

output "instance-name" {
  value = module.ec2.instance-name
}

output "availability-zone" {
  value = module.ec2.availability-zone
}

output "instance-type" {
  value = module.ec2.instance-type
}