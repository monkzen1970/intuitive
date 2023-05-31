variable "gcp_credentials" {
  description = "Path to the GCP credentials JSON file"
}

variable "gcp_project" {
  description = "The ID of the project to apply any resources to"
}

variable "gcp_region" {
  description = "The region to create resources in"
  default     = "us-central1"
}
