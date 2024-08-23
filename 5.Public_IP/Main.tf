resource "azurerm_public_ip" "pipblock" {
for_each = var.pip
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.datarg.name
  location            = data.azurerm_resource_group.datarg.location
  allocation_method   = "Static"
  sku                 = "Standard"

}
