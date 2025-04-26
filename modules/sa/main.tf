terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
  }
  required_version = "~>1.11.0"
}

resource "yandex_iam_service_account" "sa-tf-infra" {
  name = "terraform-infra"
}

resource "yandex_resourcemanager_folder_iam_member" "editor" {
  for_each = toset(var.roles)
  folder_id = var.folder_id
  role      = each.key
  member    = "serviceAccount:${yandex_iam_service_account.sa-tf-infra.id}"
}

resource "yandex_iam_service_account_static_access_key" "sa-tf-infra-static-key" {
  service_account_id = yandex_iam_service_account.sa-tf-infra.id
  description        = "Static access key for S3 operations"
}
