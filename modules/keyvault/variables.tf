variable "key_vault_name" {
  description = "The name of the Azure Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Key Vault"
  type        = string
}

variable "location" {
  description = "The Azure region where the Key Vault will be created"
  type        = string
}

variable "tenant_id" {
  description = "The Tenant ID for the Key Vault"
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the Key Vault. Options are standard or premium."
  type        = string
  default     = "standard"
}

variable "purge_protection_enabled" {
  description = "Enable purge protection for the Key Vault"
  type        = bool
  default     = false
}

variable "access_policies" {
  description = "A list of access policies to apply to the Key Vault"
  type = list(object({
    tenant_id              = string
    object_id              = string
    key_permissions        = list(string)
    secret_permissions     = list(string)
    certificate_permissions = list(string)
    storage_permissions    = list(string)
  }))
  default = []
}

# Optional Firewall and Network ACLs
variable "enable_firewall" {
  description = "Enable firewall and virtual network rules for the Key Vault"
  type        = bool
  default     = false
}

variable "firewall_bypass" {
  description = "Specifies the applications that can bypass the firewall. Options are AzureServices, None."
  type        = string
  default     = "AzureServices"
}

variable "firewall_default_action" {
  description = "The default action when no rules match. Options are Allow or Deny."
  type        = string
  default     = "Deny"
}

variable "virtual_network_subnet_ids" {
  description = "List of Subnet IDs to allow access to the Key Vault"
  type        = list(string)
  default     = []
}