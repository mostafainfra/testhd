terraform {
  backend "azurerm" {
    resource_group_name   = "rg-shared-mgmt-francecentral-001"
    storage_account_name  = "stmgmtfcngd001"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  location = "France Central"
  name     = "rg-test-github-actions"
}
