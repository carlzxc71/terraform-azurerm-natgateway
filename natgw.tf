resource "azurerm_nat_gateway" "this" {
  name                    = var.nat_gw_name
  location                = data.azurerm_resource_group.this.location
  resource_group_name     = data.azurerm_resource_group.this.name
  sku_name                = var.nat_gw_sku_name
  idle_timeout_in_minutes = 10
  zones                   = ["1"]
}

resource "azurerm_nat_gateway_public_ip_association" "this" {
  nat_gateway_id       = azurerm_nat_gateway.this.id
  public_ip_address_id = azurerm_public_ip.this.id

}