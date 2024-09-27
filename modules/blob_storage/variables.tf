variable "storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Location of the Storage Account"
  type        = string
}

variable "container_name" {
  description = "Blob container name"
  type        = string
}

variable "account_tier" {
  description = "Tier of the account"
  type        = string
}

variable "account_replication_type" {
  description = "Replication Type"
  type        = string
}