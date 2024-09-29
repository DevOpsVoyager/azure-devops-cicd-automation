variable "peering_name" {
  description = "The name of the Virtual Network Peering"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the local virtual network"
  type        = string
}

variable "remote_virtual_network_id" {
  description = "The ID of the remote virtual network"
  type        = string
}

variable "allow_virtual_network_access" {
  description = "Allows access to the remote virtual network"
  type        = bool
}

variable "allow_forwarded_traffic" {
  description = "Allows forwarded traffic from the remote virtual network"
  type        = bool
}

variable "allow_gateway_transit" {
  description = "Allows gateway transit between virtual networks"
  type        = bool
}

variable "use_remote_gateways" {
  description = "Allows the use of remote virtual network gateways"
  type        = bool
}
