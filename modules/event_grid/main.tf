resource "azurerm_eventgrid_topic" "event_grid" {
  name                = var.event_grid_name
  location            = var.location
  resource_group_name = var.resource_group_name
}
