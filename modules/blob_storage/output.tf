output "blob_storage_id" {
  description = "The ID of the Blob Storage Account"
  value       = azurerm_storage_account.storage_account.id
}
