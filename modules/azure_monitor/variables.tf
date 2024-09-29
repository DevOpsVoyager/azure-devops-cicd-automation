variable "monitor_name" {
  description = "The name of the Azure Monitor"
  type        = string
}

variable "location" {
  description = "Location of the Azure Monitor"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "scope" {
  description = "Scope of the activity log"
  type        = string
}

variable "category" {
  description = "Category for the activity log"
  type        = string
}
