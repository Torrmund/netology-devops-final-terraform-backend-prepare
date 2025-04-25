# Создание KMS ключа для шифрования бакета
resource "yandex_kms_symmetric_key" "state-key" {
  name = var.bucket_key_name
  description = var.bucket_key_description
  folder_id = var.yc_folder_id
  default_algorithm = var.bucket_key_default_algorithm
}

resource "yandex_kms_symmetric_key_iam_member" "sa-access" {
  symmetric_key_id = yandex_kms_symmetric_key.state-key.id
  role = "kms.keys.encrypterDecrypter"
  member = "serviceAccount:${yandex_iam_service_account.tf-sa.id}"
}
