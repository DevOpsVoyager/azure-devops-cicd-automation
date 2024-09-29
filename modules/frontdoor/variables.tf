# Front Door Variables

variable "frontdoor_name" {
  description = "Name of the Front Door resource"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Routing Rule
variable "routing_rule_name" {
  description = "Name of the routing rule"
  type        = string
}

variable "accepted_protocols" {
  description = "Accepted protocols (Http, Https)"
  type        = list(string)
  default     = ["Http", "Https"]
}

variable "patterns_to_match" {
  description = "URL patterns to match"
  type        = list(string)
  default     = ["/*"]
}

variable "frontend_endpoint_name" {
  description = "Name of the frontend endpoint"
  type        = string
}

variable "forwarding_protocol" {
  description = "The forwarding protocol"
  type        = string
  default     = "MatchRequest"
}

variable "backend_pool_name" {
  description = "Name of the backend pool"
  type        = string
}

# Backend Pool Load Balancing
variable "load_balancing_name" {
  description = "Name of the load balancing configuration"
  type        = string
}

# Backend Pool Health Probe
variable "health_probe_name" {
  description = "Name of the health probe configuration"
  type        = string
}

# Backend Pool
variable "backend_host_header" {
  description = "Host header for the backend"
  type        = string
  default     = "www.bing.com"
}

variable "backend_address" {
  description = "Backend address"
  type        = string
  default     = "www.bing.com"
}

variable "backend_http_port" {
  description = "HTTP port for the backend"
  type        = number
  default     = 80
}

variable "backend_https_port" {
  description = "HTTPS port for the backend"
  type        = number
  default     = 443
}

# Frontend Endpoint
variable "frontend_host_name" {
  description = "Host name for the frontend endpoint"
  type        = string
  default     = "example-FrontDoor.azurefd.net"
}
