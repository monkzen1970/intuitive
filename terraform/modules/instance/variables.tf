variable "instance_count" {
  description = "The number of instances to create"
}

variable "instance_name" {
  description = "The name of the instance"
}

variable "machine_type" {
  description = "The machine type of instance to start"
}

variable "zone" {
  description = "The zone where the instance will be created"
}

variable "image" {
  description = "The image from which to initialize the boot disk"
}

variable "boot_disk_size_gb" {
  description = "The size of the boot disk"
}

variable "subnet_id" {
  description = "The ID of the subnet where instances will be created"
}
