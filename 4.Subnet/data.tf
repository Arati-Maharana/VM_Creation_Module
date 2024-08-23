data "azurerm_resource_group" "datarg" {
  name="aratirg"
}
data "azurerm_virtual_network" "datavnet" {
  name                = "arati-vnet"
  resource_group_name = data.azurerm_resource_group.datarg.name
}