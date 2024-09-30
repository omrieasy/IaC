provider "azurerm" {
  features {}
  subscription_id = "d43779ad-ea3f-4b1b-869a-86387679ec60"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.3.0"
    }
  }
}