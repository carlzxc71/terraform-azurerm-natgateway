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
  version = "1.0.8"

    // Required variables
    existing_rg_name = "rg-prod-sc-core"
    
    // Optional variables
    nat_gw_name      = "natgw-prod-sc-core"
    nat_gw_sku_name  = "Standard"
    location         = "Sweden Central"
    pip_sku_name     = "Standard"
    pip_name         = "pip-nat-gateway"
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.71.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.71.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_nat_gateway.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway) | resource |
| [azurerm_nat_gateway_public_ip_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway_public_ip_association) | resource |
| [azurerm_public_ip.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_existing_rg_name"></a> [existing\_rg\_name](#input\_existing\_rg\_name) | value for the name of an existing resource group | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | value for the location of the nat gateway | `string` | `"West Europe"` | no |
| <a name="input_nat_gw_name"></a> [nat\_gw\_name](#input\_nat\_gw\_name) | value for the name of the nat gateway | `string` | `"nat-Gateway"` | no |
| <a name="input_nat_gw_sku_name"></a> [nat\_gw\_sku\_name](#input\_nat\_gw\_sku\_name) | value for the sku name of the nat gateway | `string` | `"Standard"` | no |
| <a name="input_pip_name"></a> [pip\_name](#input\_pip\_name) | value for the name of the public ip | `string` | `"pip-nat-gateway"` | no |
| <a name="input_pip_sku_name"></a> [pip\_sku\_name](#input\_pip\_sku\_name) | value for the sku name of the public IP | `string` | `"Standard"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the nat gateway |
| <a name="output_pip_address"></a> [pip\_address](#output\_pip\_address) | The address of the public ip |
<!-- END_TF_DOCS -->