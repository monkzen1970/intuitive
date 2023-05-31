module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
  vpc_name = var.vpc_name
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_name = var.subnet_name
}

module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}

module "ec2" {
  source = "./modules/ec2"
  instance_count = var.instance_count
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_id = module.subnet.subnet_id
  key_name = var.key_name
  volume_size = var.volume_size
  volume_type = var.volume_type
  instance_name = var.instance_name
}

module "ebs" {
  source = "./modules/ebs"
  instance_id = module.ec2.instance_id
  availability_zone = var.availability_zone
  volume_size = var.volume_size
  volume_name = var.volume_name
  device_name = var.device_name
}