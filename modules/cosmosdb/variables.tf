variable "cosmosdb_name" {
  description = "The name of the Cosmos DB account"
  type        = string
}

variable "location" {
  description = "The location for the Cosmos DB"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "offer_type" {
  description = "The offer_type"
  type        = string
}

variable "kind" {
  description = "The kind of the cosmosdb"
  type        = string
}

variable "consistency_level" {
  description = "The consistency_level"
  type        = string
}

variable "failover_priority" {
  description = "The failover_priority"
  type        = number
}