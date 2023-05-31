output "instance_ids" {
  description = "The ID of the EC2 Instances"
  value       = aws_instance.main.*.id
}
