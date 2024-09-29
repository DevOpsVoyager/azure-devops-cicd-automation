variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
}

variable "location" {
  type        = string
  description = "Location of the NSG"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where the NSG is created"
}

variable "rule_name" {
  type        = string
  description = "Name of the NSG rule"
}

variable "rule_priority" {
  type        = number
  description = "Priority of the rule"
}

variable "direction" {
  type        = string
  description = "Direction of traffic (Inbound or Outbound)"
}

variable "access" {
  type        = string
  description = "Allow or Deny traffic"
}

variable "protocol" {
  type        = string
  description = "Protocol to allow (TCP, UDP, etc.)"
}

variable "source_port_range" {
  type        = string
  description = "Source port range"
}

variable "destination_port_range" {
  type        = string
  description = "Destination port range"
}

variable "source_address_prefix" {
  type        = string
  description = "Source address prefix"
}

variable "destination_address_prefix" {
  type        = string
  description = "Destination address prefix"
}
