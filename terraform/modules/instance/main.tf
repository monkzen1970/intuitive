resource "google_compute_network_interface" "interface" {
  count = var.instance_count
  name  = "${var.network_interface_name}-${count.index}"
  network = var.network_id
  subnetwork = var.subnetwork_id

  access_config {
    // Ephemeral IP
  }
}

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
    network_interface = google_compute_network_interface.interface[count.index].id
  }
}
