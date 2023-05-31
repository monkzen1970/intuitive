variable "aws_region" {
  description = "The region to deploy resources into"
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "Your AWS Access Key"
}

variable "aws_secret_key" {
  description = "Your AWS Secret Key"
}

variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

