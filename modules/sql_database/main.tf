resource "azurerm_sql_database" "sql_db" {
  name                = var.sql_database_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.sql_server_name
  edition             = var.edition
  requested_service_objective_name = var.requested_service_objective_name
}
