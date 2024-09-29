output "vnet_ids" {
  value = module.vnet[*].vnet_id
}

output "subnet_ids" {
  value = module.subnet[*].subnet_id
}

output "nic_ids" {
  value = module.nic[*].nic_id
}

output "app_service_ids" {
  value = module.app_service[*].app_service_id
}

output "azure_function_ids" {
  value = module.azure_functions[*].function_app_id
}

output "vm_windows_id" {
  value = module.vm_windows.vm_id
}

output "vm_linux_id" {
  value = module.vm_linux.vm_linux_id
}

output "network_peering_id" {
  value = module.network_peering.peering_id
}
