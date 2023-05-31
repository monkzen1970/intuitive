module "vpc" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_name = var.subnet_name
  region = var.gcp_region
}

module "bucket" {
  source = "./modules/bucket"
  bucket_name = var.bucket_name
  location = var.gcp_region
}

module "instance" {
  source = "./modules/instance"
  instance_count = var.instance_count
  instance_name = var.instance_name
  machine_type = var.machine_type
  zone = var.gcp_zone
  image = var.image
  boot_disk_size_gb = var.boot_disk_size_gb
  subnet_id = module.subnet.subnet_id
}

module "disk" {
  source = "./modules/disk"
  disk_count = var.disk_count
  disk_name = var.disk_name
  disk_type = var.disk_type
  disk_size_gb = var.disk_size_gb
  zone = var.gcp_zone
  instance_id = module.instance.instance_id
}
