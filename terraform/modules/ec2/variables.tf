variable "instance_count" {
  description = "The number of instances to create"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
}

variable "instance_type" {
  description = "The type of instance to start"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
}

variable "key_name" {
  description = "The key name to use for the instance"
}

variable "volume_size" {
  description = "The size of the root volume"
}

variable "volume_type" {
  description = "The type of the volume"
}

variable "instance_name" {
  description = "The name of the instance"
}
