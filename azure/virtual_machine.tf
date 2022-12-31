
resource "azurerm_linux_virtual_machine" "azure-server" {
  name                = var.azurerm_linux_virtual_machine_name
  resource_group_name = azurerm_resource_group.azure.name
  location            = azurerm_resource_group.azure.location
  size                = var.azurerm_linux_virtual_machine_size
  admin_username      = var.azurerm_linux_virtual_machine_admin_username
  admin_password      = var.azurerm_linux_virtual_machine_admin_password
  user_data           = filebase64(var.azurerm_linux_virtual_machine_user_data)
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  admin_ssh_key {
    username   = var.admin_ssh_key_username
    public_key = file(var.admin_ssh_key_public_key)
  }

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.source_image_reference_publisher
    offer     = var.source_image_reference_offer
    sku       = var.source_image_reference_sku
    version   = var.source_image_reference_version
  }
}