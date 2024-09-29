variable "redis_name" {
  type        = string
  description = "Name of the Redis Cache instance"
}

variable "location" {
  type        = string
  description = "Location of the Redis Cache"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where the Redis Cache is created"
}

variable "capacity" {
  type        = number
  description = "Capacity of the Redis Cache instance"
}

variable "family" {
  type        = string
  description = "SKU Family of the Redis Cache (C or P)"
}

variable "sku_name" {
  type        = string
  description = "SKU Name for the Redis Cache (Standard or Premium)"
}
