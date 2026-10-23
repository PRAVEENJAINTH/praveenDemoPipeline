terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "firstPipelineStageFile"
    storage_account_name = "firstpipeline99"
    container_name       = "firstpipelinecontainer"
    key                  = "dev_terraform"
  

  }
}
provider "azurerm" {
  features {}
  subscription_id = "aa688742-37f0-42a5-b2e3-0134d87fbc3e"
}


