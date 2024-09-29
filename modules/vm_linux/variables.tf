variable "vm_linux_name" {
  description = "The name of the VM"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "vm_linux_size" {
  description = "The size of the VM"
  type        = string
}

variable "vm_linux_admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "vm_linux_ssh_key" {
  description = "The SSH public key for the admin user"
  type        = string
}

variable "linux_caching" {
  description = "The type of caching"
  type        = string
}

variable "linux_storage_account_type" {
  description = "The type of storage account"
  type        = string
}

variable "linux_publisher" {
  description = "The publisher of vm"
  type        = string
}

variable "linux_offer" {
  description = "The offer of image"
  type        = string
}

variable "linux_sku" {
  description = "The sku of vm"
  type        = string
}

variable "linux_version" {
  description = "The version of image"
  type        = string
}

variable "nic_id" {
  description = "The version of image"
  type        = string
}