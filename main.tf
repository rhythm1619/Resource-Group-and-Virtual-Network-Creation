
# Create a Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location

}

# Create a Virtual Network
resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  tags = {
    Environment = "Development"
    Project     = "Terraform Example"
  }
}

# Create a Subnet
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnet_prefix

  # Optional: Add a service endpoint (e.g., for Azure Storage)
  service_endpoints = ["Microsoft.Storage"]


}