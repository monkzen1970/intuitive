output "subnet_id" {
  description = "The ID of the Subnet"
  value       = google_compute_subnetwork.subnet.self_link
}
