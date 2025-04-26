output "sa_id" {
  value = yandex_iam_service_account.sa-tf-infra.id
}

output "sa_key_id" {
  value = yandex_iam_service_account_static_access_key.sa-tf-infra-static-key.access_key
}

output "sa_secret" {
  value     = yandex_iam_service_account_static_access_key.sa-tf-infra-static-key.secret_key
  sensitive = true
}
