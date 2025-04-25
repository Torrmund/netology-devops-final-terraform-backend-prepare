# Создание сервисного аккаунта
resource "yandex_iam_service_account" "tf-sa" {
  name = var.sa_name
  description = var.sa_description
  folder_id = var.yc_folder_id
}

# Создание статического ключа сервисного аккаунта
resource "yandex_iam_service_account_static_access_key" "tf-sa-key" {
  service_account_id = yandex_iam_service_account.tf-sa.id
  description = var.sa_static_key_description
}

# Назначение прав сервисному аккаунту
resource "yandex_resourcemanager_folder_iam_member" "tf-sa-ycc-permissions" {
  folder_id = var.yc_folder_id
  role = var.sa_ycc_role
  member = "serviceAccount:${yandex_iam_service_account.tf-sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "tf-sa-vpc-permissions" {
  folder_id = var.yc_folder_id
  role = var.sa_vpc_role
  member = "serviceAccount:${yandex_iam_service_account.tf-sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "tf-sa-storage-permissions" {
  folder_id = var.yc_folder_id
  role = var.sa_storage_role
  member = "serviceAccount:${yandex_iam_service_account.tf-sa.id}"
}

# Формирование файла credentials сервисного аккаунта для проекта infrastructure
resource "local_sensitive_file" "sa_credentials" {
  filename = var.sa_credentials_file_path
  file_permission = 600

  content = <<EOF
[default]
aws_access_key_id = ${yandex_iam_service_account_static_access_key.tf-sa-key.access_key}
aws_secret_access_key = ${yandex_iam_service_account_static_access_key.tf-sa-key.secret_key}
storage_access_key = ${yandex_iam_service_account_static_access_key.tf-sa-key.access_key}
storage_secret_key = ${yandex_iam_service_account_static_access_key.tf-sa-key.secret_key}
EOF
}
