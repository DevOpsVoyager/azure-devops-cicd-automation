output "monitor_id" {
  description = "The ID of the Azure Monitor"
  value       = azurerm_monitor_activity_log_alert.monitor.id
}
