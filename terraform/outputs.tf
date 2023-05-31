output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = module.subnet.subnet_id
}

output "bucket_url" {
  description = "The URL of the GCS bucket"
  value       = module.bucket.bucket_url
}

output "instance_ids" {
  description = "The IDs of the Compute Instances"
  value       = module.instance.instance_ids
}

output "disk_ids" {
  description = "The IDs of the Persistent Disks"
  value       = module.disk.disk_ids
}
