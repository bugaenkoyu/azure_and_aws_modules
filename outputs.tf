output "AWS_public_ip" {
  value = module.aws_server.aws_public_ip
}
output "Azure_public_ip" {
  value = module.azure_server.azure_public_ip
}