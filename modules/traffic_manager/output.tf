output "traffic_manager_profile_id" {
  description = "ID of the Traffic Manager profile"
  value       = azurerm_traffic_manager_profile.example.id
}

output "traffic_manager_profile_name" {
  description = "Name of the Traffic Manager profile"
  value       = azurerm_traffic_manager_profile.example.name
}

output "traffic_manager_profile_dns_name" {
  description = "DNS name of the Traffic Manager profile"
  value       = azurerm_traffic_manager_profile.example.dns_config[0].fqdn
}
