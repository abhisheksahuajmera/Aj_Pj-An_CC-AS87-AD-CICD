# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = ">= 3.7.0"
#     }
#   }

#   # Update this block with the location of your terraform state file
#   backend "azurerm" {
#     resource_group_name  = "rg-terraform-github-actions-state"
#     storage_account_name = "terraformgithubactions"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
#     use_oidc             = true
#   }
# }


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "abcd1234"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
