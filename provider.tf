terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = var.state_resource_group_name
    storage_account_name  = var.state_storage_account_name
    container_name        = var.state_container_name
    key                   = var.state_key
    access_key            = var.state_access_key
  }
}

provider "azurerm" {
  features {}
}