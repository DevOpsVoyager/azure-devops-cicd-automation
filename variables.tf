# General Variables
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

# VNet Variables
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}

variable "vnet_count" {
  description = "Number of Virtual Network"
  type        = number
}

#Subnet Variables
variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the Subnet"
  type        = list(string)
}

variable "subnet_count" {
  description = "Number of subnets to create."
  type        = number
}

#NIC
variable "nic_name" {
  description = "The name of the Network Interface"
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

# Windows VM Variables
variable "vm_windows_name" {
  description = "Name of the Windows VM"
  type        = string
}

variable "vm_windows_size" {
  description = "Size of the VM"
  type        = string
}

variable "vm_windows_admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "vm_windows_admin_password" {
  description = "Admin password for the VM"
  type        = string
}

variable "windows_caching" {
  description = "The type of caching"
  type        = string
}

variable "windows_storage_account_type" {
  description = "The type of storage account"
  type        = string
}

variable "windows_publisher" {
  description = "The publisher of vm"
  type        = string
}

variable "windows_offer" {
  description = "The offer of image"
  type        = string
}

variable "windows_sku" {
  description = "The sku of vm"
  type        = string
}

variable "windows_version" {
  description = "The version of image"
  type        = string
}

# Linux VM Variables
variable "vm_linux_name" {
  description = "The name of the VM"
  type        = string
}

variable "vm_linux_size" {
  description = "The size of the VM"
  type        = string
}

variable "vm_linux_admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "vm_linux_ssh_key" {
  description = "The SSH public key for the admin user"
  type        = string
}

variable "linux_caching" {
  description = "The type of caching"
  type        = string
}

variable "linux_storage_account_type" {
  description = "The type of storage account"
  type        = string
}

variable "linux_publisher" {
  description = "The publisher of vm"
  type        = string
}

variable "linux_offer" {
  description = "The offer of image"
  type        = string
}

variable "linux_sku" {
  description = "The sku of vm"
  type        = string
}

variable "linux_version" {
  description = "The version of image"
  type        = string
}

# NSG Variables
variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
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

# Storage Account
variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "account_tier" {
  type        = string
  description = "Storage account tier (Standard or Premium)"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type (LRS, GRS, RAGRS, ZRS)"
}

# SQL Database Variables
variable "sql_database_name" {
  description = "The name of the SQL Database"
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

# Blob Storage Variables
variable "blob_storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "container_name" {
  description = "Blob container name"
  type        = string
}

variable "blob_account_tier" {
  description = "Tier of the account"
  type        = string
}

variable "blob_account_replication_type" {
  description = "Replication Type"
  type        = string
}

# Key Vault Variables
variable "key_vault_name" {
  description = "The name of the Azure Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "The Tenant ID for the Key Vault"
  type        = string
}

variable "key_vault_sku_name" {
  description = "The SKU name for the Key Vault. Options are standard or premium."
  type        = string
  default     = "standard"
}

variable "key_vault_access_policies" {
  description = "A list of access policies for the Key Vault"
  type = list(object({
    tenant_id              = string
    object_id              = string
    key_permissions        = list(string)
    secret_permissions     = list(string)
    certificate_permissions = list(string)
    storage_permissions    = list(string)
  }))
  default = []
}

# Optional Firewall Variables
variable "key_vault_enable_firewall" {
  description = "Enable firewall and virtual network rules for the Key Vault"
  type        = bool
  default     = false
}

variable "key_vault_firewall_bypass" {
  description = "Specifies the applications that can bypass the firewall. Options are AzureServices, None."
  type        = string
  default     = "AzureServices"
}

variable "key_vault_firewall_default_action" {
  description = "The default action when no rules match. Options are Allow or Deny."
  type        = string
  default     = "Deny"
}

variable "tags" {
  description = "A mapping of tags to assign to the Key Vault"
  type        = map(string)
  default     = {}
}

# AKS
variable "aks_name" {
  description = "The name of the AKS Cluster"
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

# App Service
variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "settings" {
  description = "site_config"
  type        = bool
}

# Azure Function
variable "function_app_name" {
  description = "The name of the Function App"
  type        = string
}

variable "function_storage_account_name" {
  description = "Storage account name for the Function App"
  type        = string
}

variable "storage_account_access_key" {
  description = "Storage account access key for the Function App"
  type        = string
}

#Cosmosdb variables
variable "cosmosdb_name" {
  description = "The name of the Cosmos DB account"
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

#Redis Cache Variables
variable "redis_name" {
  type        = string
  description = "Name of the Redis Cache instance"
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

#Traffic Manager Variables
variable "name" {
  description = "Name of the Traffic Manager profile"
  type        = string
}

variable "traffic_routing_method" {
  description = "The traffic routing method for the Traffic Manager profile"
  type        = string
  default     = "Weighted"
}

# DNS Config
variable "relative_name" {
  description = "The relative DNS name for the Traffic Manager profile"
  type        = string
}

variable "dns_ttl" {
  description = "Time to Live (TTL) for the DNS configuration"
  type        = number
  default     = 100
}

# Monitor Config
variable "monitor_protocol" {
  description = "The protocol used for the monitor (HTTP/HTTPS)"
  type        = string
  default     = "HTTP"
}

variable "monitor_port" {
  description = "The port for the monitor to check the health of the endpoint"
  type        = number
  default     = 80
}

variable "monitor_path" {
  description = "The path used for health checks"
  type        = string
  default     = "/"
}

variable "monitor_interval_in_seconds" {
  description = "Interval in seconds between consecutive health checks"
  type        = number
  default     = 30
}

variable "monitor_timeout_in_seconds" {
  description = "Timeout in seconds for each health check request"
  type        = number
  default     = 9
}

variable "monitor_tolerated_failures" {
  description = "The number of tolerated failures before the endpoint is considered unhealthy"
  type        = number
  default     = 3
}

#Network Watch Variables
variable "network_watcher_name" {
  description = "The name of the Network Watcher"
  type        = string
}

#Network Peering Variables
variable "peering_name" {
  description = "The name of the Virtual Network Peering"
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

# Front Door Variables
variable "frontdoor_name" {
  description = "Name of the Front Door resource"
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

#Azure Monitor Variables
variable "monitor_name" {
  description = "The name of the Azure Monitor"
  type        = string
}

variable "scope" {
  description = "Scope of the activity log"
  type        = string
}

variable "category" {
  description = "Category for the activity log"
  type        = string
}

#App Gateway Variables
# Application Gateway Variables

variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  type        = string
}

# SKU configuration
variable "app_gateway_sku_name" {
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
