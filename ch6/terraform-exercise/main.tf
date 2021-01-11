terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "=2.4.0"
    }
  }
}
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
}
