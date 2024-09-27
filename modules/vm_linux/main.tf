resource "azurerm_linux_virtual_machine" "vm_linux" {
  name                = var.vm_linux_name 
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_linux_size
  admin_username      = var.vm_linux_admin_username
  network_interface_ids = [azurerm_network_interface.nic.id]

  admin_ssh_key {
    username   = var.vm_linux_admin_username
    public_key = var.vm_linux_ssh_key
  }

  os_disk {
    caching              = var.linux_caching
    storage_account_type = var.linux_storage_account_type
  }

  source_image_reference {
    publisher = var.linux_publisher
    offer     = var.linux_offer
    sku       = var.linux_sku
    version   = var.linux_version
  }
}

  
