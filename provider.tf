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
    resource_group_name   = local.state_resource_group_namelc
    storage_account_name  = local.state_storage_account_namelc
    container_name        = local.state_container_namelc
    key                   = local.state_keylc
    access_key            = local.state_access_keylc
  }
}

provider "azurerm" {
  features {}
}