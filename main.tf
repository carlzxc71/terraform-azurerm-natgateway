terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      version = ">= 3.71.0"
      source  = "hashicorp/azurerm"
    }
  }
}