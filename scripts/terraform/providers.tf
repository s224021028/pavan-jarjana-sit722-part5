terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.1"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}