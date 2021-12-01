terraform {
    required_providers {
        azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 2.65"
        }
    }
    backend "remote" {
        organization = "t001"
        workspaces {
            name = "terraform001"
        }
    }   
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = "terraformrg"
  location = "eastus"
}