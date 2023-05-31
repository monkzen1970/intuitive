resource "google_compute_instance" "instance" {
  count        = var.instance_count
  name         = "${var.instance_name}-${count.index}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.boot_disk_size_gb
    }
  }

  network_interface {
    subnetwork = var.subnet_id
  }
}
