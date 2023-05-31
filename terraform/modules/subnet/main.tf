resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  network       = var.vpc_id
  ip_cidr_range = var.subnet_cidr
  region        = var.region
}
