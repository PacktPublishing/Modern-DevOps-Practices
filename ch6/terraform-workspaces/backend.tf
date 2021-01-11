terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate15153"
    container_name       = "tfstate"
    key                  = "ws.tfstate"
  }
}
