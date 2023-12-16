resource "azurerm_public_ip" "this" {
  name                = var.pip_name
  location            = var.location
  resource_group_name = var.existing_rg_name
  allocation_method   = "Static"
  sku                 = var.pip_sku_name
}