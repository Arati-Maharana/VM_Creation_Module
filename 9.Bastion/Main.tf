resource "azurerm_bastion_host" "bastionblock" {
    for_each = var.bastion
  name                = each.value.name
  location            = data.azurerm_resource_group.datarg.location
  resource_group_name = data.azurerm_resource_group.datarg.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.datasubnet.id
    public_ip_address_id = data.azurerm_public_ip.datapip.id
  }
}