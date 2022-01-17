terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.92"
    }
  }
  required_version = ">= 1.1.3"

  cloud {
    organization = "erlandsen_tech"
    workspaces {
      name = "erlandsentech_infrastructure"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
}

resource "azurerm_resource_group" "main" {
    name = "erlandsentech"
    location = "norwayeast"
}