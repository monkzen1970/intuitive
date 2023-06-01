variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}
