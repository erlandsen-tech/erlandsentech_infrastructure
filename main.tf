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
    workspaces  {
        name = "erlandsentech_infrastructure"
    }
}

}

provider "azurerm" {
  features {

  }

}

resource "azurerm_resource_group" "main" {
  name     = "erlandsen_tech"
  location = "norwayeast"
}