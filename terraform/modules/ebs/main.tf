resource "aws_ebs_volume" "main" {
  availability_zone = var.availability_zone
  size              = var.volume_size

  tags = {
    Name = var.volume_name
  }
}

resource "aws_volume_attachment" "main" {
  device_name = var.device_name
  volume_id   = aws_ebs_volume.main.id
  instance_id = var.instance_id
}
