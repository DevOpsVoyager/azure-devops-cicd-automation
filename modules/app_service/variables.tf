variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "location" {
  description = "The location for the App Service"
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

variable "settings" {
  description = "site_config"
  type        = bool
}