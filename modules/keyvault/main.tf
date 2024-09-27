resource "azurerm_key_vault" "key_vault" {
  name                     = var.key_vault_name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  tenant_id                = var.tenant_id
  sku_name                 = var.sku_name
  purge_protection_enabled = var.purge_protection_enabled

  # Optional: Enable firewall and virtual network rules
  dynamic "network_acls" {
    for_each = var.enable_firewall ? [1] : []
    content {
      bypass         = var.firewall_bypass
      default_action = var.firewall_default_action

      # Virtual Network Rules
      virtual_network_subnet_ids = var.virtual_network_subnet_ids
    }
  }

  # Access Policies
  dynamic "access_policy" {
    for_each = var.access_policies
    content {
      tenant_id = access_policy.value.tenant_id
      object_id = access_policy.value.object_id

      key_permissions        = access_policy.value.key_permissions
      secret_permissions     = access_policy.value.secret_permissions
      certificate_permissions = access_policy.value.certificate_permissions
      storage_permissions     = access_policy.value.storage_permissions
    }
  }

  tags = var.tags
}
