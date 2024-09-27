variable "aks_name" {
  description = "The name of the AKS Cluster"
  type        = string
}

variable "location" {
  description = "The location for the AKS Cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "node_pool_name" {
  description = "The Node Pool Name"
  type        = string
}

variable "node_count" {
  description = "The Node Count"
  type        = number
}

variable "aks_vm_size" {
  description = "The VM Size"
  type        = string
}