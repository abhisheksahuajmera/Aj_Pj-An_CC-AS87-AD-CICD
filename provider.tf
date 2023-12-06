terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "assetronai-dev-100-rg-102"
    storage_account_name  = "sa0999"
    container_name        = "sacon100"
    key                   = "state101.tfstate"
    access_key            = "5v9vr4gJni1vbH7o/oNXXv5ocKtKeuenr/1kr27aRTjUQWb6LKfpHAszwILleSSAZTlqgEt8A60v+ASteZYaIw=="
  }
}

provider "azurerm" {
  features {}
}