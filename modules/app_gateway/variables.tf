# Application Gateway Variables

variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the Application Gateway"
  type        = string
}

# SKU configuration
variable "sku_name" {
  description = "SKU name for the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "sku_tier" {
  description = "SKU tier for the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "sku_capacity" {
  description = "Capacity of the Application Gateway"
  type        = number
  default     = 2
}

# Gateway IP Configuration
variable "gateway_ip_configuration_name" {
  description = "Name of the Gateway IP configuration"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for the gateway"
  type        = string
}

# Frontend Port
variable "frontend_port_name" {
  description = "Name of the Frontend Port"
  type        = string
}

variable "frontend_port" {
  description = "Port for the frontend"
  type        = number
  default     = 80
}

# Frontend IP Configuration
variable "frontend_ip_configuration_name" {
  description = "Name of the Frontend IP configuration"
  type        = string
}

variable "public_ip_address_id" {
  description = "ID of the public IP address"
  type        = string
}

# Backend Address Pool
variable "backend_address_pool_name" {
  description = "Name of the Backend Address Pool"
  type        = string
}

# Backend HTTP Settings
variable "backend_http_settings_name" {
  description = "Name of the Backend HTTP Settings"
  type        = string
}

variable "cookie_based_affinity" {
  description = "Cookie-based affinity for the Backend HTTP Settings"
  type        = string
  default     = "Disabled"
}

variable "backend_http_settings_path" {
  description = "Path for Backend HTTP Settings"
  type        = string
  default     = "/path1/"
}

variable "backend_http_settings_port" {
  description = "Port for Backend HTTP Settings"
  type        = number
  default     = 80
}

variable "backend_http_settings_protocol" {
  description = "Protocol for Backend HTTP Settings"
  type        = string
  default     = "Http"
}

variable "backend_http_settings_request_timeout" {
  description = "Request timeout for Backend HTTP Settings"
  type        = number
  default     = 60
}

# HTTP Listener
variable "http_listener_name" {
  description = "Name of the HTTP Listener"
  type        = string
}

variable "http_listener_protocol" {
  description = "Protocol for the HTTP Listener"
  type        = string
  default     = "Http"
}

# Request Routing Rule
variable "request_routing_rule_name" {
  description = "Name of the Request Routing Rule"
  type        = string
}

variable "request_routing_rule_priority" {
  description = "Priority for the Request Routing Rule"
  type        = number
  default     = 9
}

variable "request_routing_rule_type" {
  description = "Rule type for the Request Routing Rule"
  type        = string
  default     = "Basic"
}
