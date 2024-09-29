resource "azurerm_network_watcher" "nw" {
  name                = var.network_watcher_name
  location            = var.location
  resource_group_name = var.resource_group_name
}
