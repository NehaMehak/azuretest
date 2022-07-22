
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
  # Note that variable values are not allowed for the backend. The
  # resource group, storage account, and container names must all be
  # hardcoded. Terraform will automatically suffix the key with the
  # current Terraform workspace/environment.
#  backend "azurerm" {
#  }


provider "azurerm" {
  features {}
}


resource "azurerm_virtual_network" "test"{
  name = "test"
  address_space = ["172.16.0.0/16"]
  resource_group_name = "terraform"
  location = "westeurope"
}
