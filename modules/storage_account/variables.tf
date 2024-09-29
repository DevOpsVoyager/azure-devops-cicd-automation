variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the storage account"
}

variable "account_tier" {
  type        = string
  description = "Storage account tier (Standard or Premium)"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type (LRS, GRS, RAGRS, ZRS)"
}
