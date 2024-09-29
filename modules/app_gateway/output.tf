output "app_gateway_id" {
  description = "ID of the Application Gateway"
  value       = azurerm_application_gateway.network.id
}

output "app_gateway_name" {
  description = "Name of the Application Gateway"
  value       = azurerm_application_gateway.network.name
}

output "app_gateway_location" {
  description = "Location of the Application Gateway"
  value       = azurerm_application_gateway.network.location
}
