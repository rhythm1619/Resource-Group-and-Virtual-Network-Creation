# Define variables for customization
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "subnet_prefix" {
  description = "The address prefix for the subnet"
  type        = list(string)
}