variable "name" {
  description = "Name of the Traffic Manager profile"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "traffic_routing_method" {
  description = "The traffic routing method for the Traffic Manager profile"
  type        = string
}

# DNS Config
variable "relative_name" {
  description = "The relative DNS name for the Traffic Manager profile"
  type        = string
}

variable "dns_ttl" {
  description = "Time to Live (TTL) for the DNS configuration"
  type        = number
}

# Monitor Config
variable "monitor_protocol" {
  description = "The protocol used for the monitor (HTTP/HTTPS)"
  type        = string
}

variable "monitor_port" {
  description = "The port for the monitor to check the health of the endpoint"
  type        = number
}

variable "monitor_path" {
  description = "The path used for health checks"
  type        = string
}

variable "monitor_interval_in_seconds" {
  description = "Interval in seconds between consecutive health checks"
  type        = number
}

variable "monitor_timeout_in_seconds" {
  description = "Timeout in seconds for each health check request"
  type        = number
}

variable "monitor_tolerated_failures" {
  description = "The number of tolerated failures before the endpoint is considered unhealthy"
  type        = number
}