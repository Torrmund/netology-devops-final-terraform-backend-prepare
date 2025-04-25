output "service_account_id" {
  description = "ID of the created service account"
  value       = yandex_iam_service_account.tf-sa.id
}

output "static_access_key" {
  description = "Static access key for the service account"
  value       = yandex_iam_service_account_static_access_key.tf-sa-key.access_key
}

output "static_secret_key" {
  description = "Static secret key for the service account"
  sensitive   = true
  value       = yandex_iam_service_account_static_access_key.tf-sa-key.secret_key
}

output "bucket_name" {
  description = "Name of the created storage bucket"
  value       = yandex_storage_bucket.state-bucket.bucket
}
