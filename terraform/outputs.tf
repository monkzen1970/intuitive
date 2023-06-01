output "virtual_machine_ids" {
  description = "List of Virtual Machine IDs"
  value       = module.compute.virtual_machine_ids
}

output "subnet_id" {
  description = "Subnet ID"
  value       = module.network.subnet_id
}
