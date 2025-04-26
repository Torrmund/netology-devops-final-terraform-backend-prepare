output "bucket_name" {
  description = "Name of the created storage bucket"
  value       = yandex_storage_bucket.tf-state-bucket.bucket
}