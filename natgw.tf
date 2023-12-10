resource "azurerm_nat_gateway" "this" {
  name                    = var.nat_gw_name
  location                = data.azurerm_resource_group.this.location
  resource_group_name     = data.azurerm_resource_group.this.name
  sku_name                = var.nat_gw_sku_name
  idle_timeout_in_minutes = 10
  zones                   = ["1"]
}