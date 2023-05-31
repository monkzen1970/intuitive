output "instance_ids" {
  description = "The IDs of the Instances"
  value       = google_compute_instance.instance[*].self_link
}
