variable "sql_database_name" {
  description = "The name of the SQL Database"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Location of the SQL Database"
  type        = string
}

variable "sql_server_name" {
  description = "Name of the SQL Server"
  type        = string
}

variable "edition" {
  description = "Edition of the SQL Server"
  type        = string
}

variable "requested_service_objective_name" {
  description = "Name of the requested service objective"
  type        = string
}