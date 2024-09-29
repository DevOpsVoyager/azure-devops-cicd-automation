variable "nic_name" {
  description = "The name of the Network Interface"
  type        = string
}

variable "location" {
  description = "The location/region where the NIC is created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the NIC"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to which the NIC will be attached"
  type        = string
}

variable "ip_configuration_name" {
  description = "The name of the ip configuration"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "Tags to be associated with the NIC"
  type        = string
}
