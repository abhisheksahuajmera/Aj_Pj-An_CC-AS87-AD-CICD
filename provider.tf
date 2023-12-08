terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name   = "Assetronai-dev-101-rg-108"
  #   storage_account_name  = "sa110"
  #   container_name        = "sacon100"
  #   key                   = "state100.tfstate" 
  #   access_key            = "gM2VSx+n9bCQgm5GEhzMk2r4J8VpEib+3E9ORv+GaI0jATiOgyrK6ZIcaIEMwoy+40llPcFX9Pp/+AStSDJ+Cw=="
  # }

  backend "azurerm" {
    resource_group_name   = var.STATE_DEV_RESOURCE_GROUP_NAME
    storage_account_name  = var.STATE_DEV_STORAGE_ACCOUNT_NAME
    container_name        = var.STATE_DEV_CONTAINER_NAME
    key                   = var.STATE_DEV_KEY
  }
}

provider "azurerm" {
  features {}
}