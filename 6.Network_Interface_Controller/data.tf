data "azurerm_resource_group" "datarg" {
  name="aratirg"
}

data "azurerm_virtual_network" "datavnet" {
  name="arati-vnet"
  resource_group_name =data.azurerm_resource_group.datarg.name  
  }


data "azurerm_subnet" "datasubnet" {
  for_each = var.nic
  name                 = each.value.sname
  virtual_network_name = data.azurerm_virtual_network.datavnet.name
  resource_group_name  = data.azurerm_resource_group.datarg.name
}

#sname = subnet name