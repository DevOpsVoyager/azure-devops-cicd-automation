resource "azurerm_monitor_activity_log_alert" "monitor" {
  name                = var.monitor_name
  resource_group_name = var.resource_group_name
  location            = var.location
  scopes              = [var.scope]

  criteria {
    category = var.category
  }
}
