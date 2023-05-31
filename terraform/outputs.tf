output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = module.subnet.subnet_id
}

output "bucket_id" {
  description = "The ID of the S3 bucket"
  value       = module.s3.bucket_id
}

output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = module.ec2.instance_ids
}

output "volume_id" {
  description = "The ID of the EBS volume"
  value       = module.ebs.volume_id
}
