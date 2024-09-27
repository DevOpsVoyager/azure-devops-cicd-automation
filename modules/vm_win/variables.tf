variable "vm_name" {
  description = "Name of the Windows VM"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Location of the VM"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
}

variable "caching" {
  description = "The type of caching"
  type        = string
}

variable "storage_account_type" {
  description = "The type of storage account"
  type        = string
}

variable "publisher" {
  description = "The publisher of vm"
  type        = string
}

variable "offer" {
  description = "The offer of image"
  type        = string
}

variable "sku" {
  description = "The sku of vm"
  type        = string
}

variable "version" {
  description = "The version of image"
  type        = string
}