output "name" {
  value       = azurerm_nat_gateway.this.name
  description = "The name of the nat gateway"
}

output "pip_address" {
  value       = azurerm_public_ip.this.ip_address
  description = "The address of the public ip"
  
}