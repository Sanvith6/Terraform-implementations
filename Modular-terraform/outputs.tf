output "public_ip_address" {
  
    value = aws_instance.example.public_ip
}
output "private_ip_address" {
    value = aws_instance.example.private_ip

}