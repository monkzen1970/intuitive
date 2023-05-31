output "bucket_url" {
  description = "The URL of the Bucket"
  value       = "gs://${google_storage_bucket.bucket.name}"
}
