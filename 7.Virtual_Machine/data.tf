data "azurerm_resource_group" "datarg" {
  name="aratirg"
}

data "azurerm_network_interface" "datanic" {
  for_each = var.vm
  name                = each.value.nicname
  resource_group_name = data.azurerm_resource_group.datarg.name
}
