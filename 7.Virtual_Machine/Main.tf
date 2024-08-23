resource "azurerm_linux_virtual_machine" "vmblock" {
    for_each =var.vm
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.datarg.name
  location            = data.azurerm_resource_group.datarg.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password = "Admin@123"
  disable_password_authentication = false
  network_interface_ids = [data.azurerm_network_interface.datanic[each.key].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
