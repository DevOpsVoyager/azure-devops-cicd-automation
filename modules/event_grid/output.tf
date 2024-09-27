output "event_grid_id" {
  description = "The ID of the Event Grid"
  value       = azurerm_eventgrid_topic.event_grid.id
}
