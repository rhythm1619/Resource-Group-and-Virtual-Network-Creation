terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "a5039c2e-ed16-44e0-b0f2-aad29dd6e9d0"
  features {}
}