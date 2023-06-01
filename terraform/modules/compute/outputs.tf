output "virtual_machine_ids" {
  description = "List of Virtual Machine IDs"
  value       = azurerm_virtual_machine.vm[*].id
}
