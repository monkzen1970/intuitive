variable "disk_count" {
  description = "The number of disks to create"
}

variable "disk_name" {
  description = "The name of the disk"
}

variable "disk_type" {
  description = "The type of the disk"
}

variable "disk_size_gb" {
  description = "The size of the disk in gigabytes (GB)"
}

variable "zone" {
  description = "The zone where the disk will be created"
}

variable "instance_id" {
  description = "ID of the instance where the disk will be attached"
}
