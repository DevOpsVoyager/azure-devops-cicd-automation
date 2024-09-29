output "peering_id" {
  description = "The ID of the Network Peering"
  value       = azurerm_virtual_network_peering.peering.id
}
