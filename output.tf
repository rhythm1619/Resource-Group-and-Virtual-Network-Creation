# Output the details
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.example.name
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.example.name
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = azurerm_subnet.example.name
}