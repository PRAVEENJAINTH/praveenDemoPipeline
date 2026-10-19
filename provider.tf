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
  subscription_id = "aa688742-37f0-42a5-b2e3-0134d87fbc3e"
}
