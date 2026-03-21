output "public_ip_address" {
  value = module.ec2_creation.public_ip_address
}

output "private_ip_address" {
  value = module.ec2_creation.private_ip_address
}
