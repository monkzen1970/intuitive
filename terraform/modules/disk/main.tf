resource "google_compute_disk" "disk" {
  count = var.disk_count
  name  = "${var.disk_name}-${count.index}"
  type  = var.disk_type
  size  = var.disk_size_gb
  zone  = var.zone
}

resource "google_compute_attached_disk" "attached_disk" {
  count       = var.disk_count
  disk        = google_compute_disk.disk[count.index].self_link
  instance    = var.instance_id
  device_name = "${var.disk_name}-${count.index}"
}
