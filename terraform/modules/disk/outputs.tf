output "disk_ids" {
  description = "The IDs of the Disks"
  value       = google_compute_disk.disk[*].self_link
}
