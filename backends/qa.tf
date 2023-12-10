terraform {
    backend "azurerm" {
    resource_group_name   = "assetronai-dev-100"
    storage_account_name  = "sa712"
    container_name        = "sacon101"
    key                   = "state104.tfstate"
  }  
}