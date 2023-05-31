variable "instance_id" {
  description = "ID of the EC2 instance"
}

variable "availability_zone" {
  description = "The AZ where the EBS volume will be created"
}

variable "volume_size" {
  description = "The size of the volume in gibibytes (GiB)"
}

variable "volume_name" {
  description = "The name of the volume"
}

variable "device_name" {
  description = "The name of the device within Amazon EC2"
}
