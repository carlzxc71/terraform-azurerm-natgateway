Terraform Module to provision an Azure NAT Gateway to provide outbound access to the internet for Azure Virtual Machines

## Example usage
```hcl
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      version = ">= 3.71.0"
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

module "natgateway" {
  source  = "carlzxc71/natgateway/azurerm"
  version = "1.0.1"

    nat_gw_name      = "natgw-prod-sc-core"
    nat_gw_sku_name  = "Standard"
    existing_rg_name = "rg-prod-sc-core"
    location         = "Sweden Central"
}
```