# Outputs for Azure Front Door

output "frontdoor_id" {
  description = "ID of the Front Door resource"
  value       = azurerm_frontdoor.example.id
}

output "frontdoor_name" {
  description = "Name of the Front Door"
  value       = azurerm_frontdoor.example.name
}

output "frontend_endpoint_host_name" {
  description = "Frontend endpoint host name"
  value       = azurerm_frontdoor.example.frontend_endpoint[0].host_name
}
