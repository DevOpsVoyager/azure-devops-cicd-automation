variable "function_app_name" {
  description = "The name of the Function App"
  type        = string
}

variable "location" {
  description = "The location for the Function App"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "app_service_plan_id" {
  description = "App Service Plan ID"
  type        = string
}

variable "storage_account_name" {
  description = "Storage account name for the Function App"
  type        = string
}

variable "storage_account_access_key" {
  description = "Storage account access key for the Function App"
  type        = string
}
