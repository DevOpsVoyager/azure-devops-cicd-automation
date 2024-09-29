# Resource Group Module
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Virtual Network Module (5 VNETs)
module "vnet" {
  source              = "./modules/vnet"
  count               = 5
  vnet_name           = "${var.vnet_name}-${count.index + 1}"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  address_space       = [var.vnet_address_space[count.index]]
}

# Subnet Module (5 Subnets)
module "subnet" {
  source              = "./modules/subnet"
  count               = 5
  subnet_name         = "${var.subnet_name}-${count.index + 1}"
  resource_group_name = module.resource_group.resource_group_name
  vnet_name           = module.vnet[count.index].vnet_name
  address_prefixes    = [var.subnet_address_prefixes[count.index]]
}

# NIC Module
module "nic" {
  source                    = "./modules/nic"
  nic_name                  = var.nic_name
  location                  = module.resource_group.location
  resource_group_name       = module.resource_group.resource_group_name
  ip_configuration_name     = var.ip_configuration_name
  subnet_id                 = module.subnet[count.index].subnet_id
  private_ip_address_allocation = var.private_ip_address_allocation
}

# Windows Virtual Machine Module
module "vm_win" {
  source              = "./modules/vm_win"
  vm_name             = var.vm_windows_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  vm_size             = var.vm_windows_size
  admin_username      = var.vm_windows_admin_username
  admin_password      = var.vm_windows_admin_password
  win_nic_id          = module.nic[count.index].nic_id
  caching             = var.windows_caching
  storage_account_type = var.windows_storage_account_type
  publisher = var.windows_publisher
  offer     = var.windows_offer
  sku       = var.windows_sku
  version   = var.windows_version
}

# Linux Virtual Machine Module
module "vm_linux" {
  source                   = "./modules/vm_linux"
  vm_linux_name            = var.vm_linux_name
  resource_group_name      = module.resource_group.resource_group_name
  location                 = module.resource_group.location
  vm_linux_size            = var.vm_linux_size
  vm_linux_admin_username  = var.vm_linux_admin_username
  vm_linux_ssh_key         = var.vm_linux_ssh_key
  linux_sku                = var.linux_sku
  linux_publisher          = var.linux_publisher
  linux_version            = var.linux_version
  linux_offer              = var.linux_offer
  linux_caching            = var.linux_caching
  linux_storage_account_type = var.linux_storage_account_type
  nic_id                   = module.nic[count.index].nic_id
}

# Network Peering Module (Peering between Linux and Windows VMs)
module "network_peering" {
  source = "./modules/network_peering"
  count  = 1
  peering_name               = "peer-linux-windows"
  resource_group_name        = module.resource_group.resource_group_name
  virtual_network_name       = module.vnet[3].vnet_name  # Linux VNET
  remote_virtual_network_id  = module.vnet[4].vnet_id    # Windows VNET
  allow_virtual_network_access = true
  allow_forwarded_traffic    = true
  allow_gateway_transit      = false
  use_remote_gateways        = false
}

# App Services
module "app_service" {
  source              = "./modules/app_service"
  count               = 2
  app_service_name    = var.app_service_name[count.index]
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  app_service_plan_id = module.app_service[*].app_service_id
  settings            = var.settings[count.index]
}

# Azure Functions (2 instances)
module "azure_functions" {
  source                     = "./modules/azure_functions"
  count                      = 2
  function_app_name          = var.function_app_name[count.index]
  location                   = module.resource_group.location
  resource_group_name        = module.resource_group.resource_group_name
  app_service_plan_id        = module.app_service[*].app_service_id
  storage_account_name       = var.function_storage_account_name[count.index]
  storage_account_access_key = var.storage_account_access_key[count.index]
}

# Frontdoor Module
module "frontdoor" {
  source = "./modules/frontdoor"
  frontdoor_name        = var.frontdoor_name
  resource_group_name   = module.resource_group.resource_group_name
  routing_rule_name     = var.routing_rule_name
  accepted_protocols    = var.accepted_protocols
  patterns_to_match     = var.patterns_to_match
  forwarding_protocol   = var.forwarding_protocol
  backend_pool_name     = var.backend_pool_name
  load_balancing_name   = var.load_balancing_name
  health_probe_name     = var.health_probe_name
  backend_host_header   = var.backend_host_header
  backend_address       = var.backend_address
  backend_http_port     = var.backend_http_port
  backend_https_port    = var.backend_https_port
  frontend_endpoint_name = var.frontend_endpoint_name
  frontend_host_name     = var.frontend_host_name
}

# Azure Monitor Module
module "azure_monitor" {
  source = "./modules/azure_monitor"
  monitor_name        = var.monitor_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  scope               = [var.scope]
  category            = var.category
}
