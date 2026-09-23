terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-statefile"
    storage_account_name = "stagefile1233211"
    container_name       = "tfstate"
    key                  = "dev.terraform"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "99e53a88-495c-4e31-90d0-b8b813e5ba4b"
}
