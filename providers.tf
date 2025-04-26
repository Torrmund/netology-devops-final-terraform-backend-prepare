terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
  required_version = "~>1.11.0"
}

provider "yandex" {
  service_account_key_file = var.sa_key_file
  cloud_id = var.cloud_id
  folder_id = var.folder_id
}
