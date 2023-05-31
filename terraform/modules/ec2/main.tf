resource "aws_instance" "main" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    delete_on_termination = true
  }
}
