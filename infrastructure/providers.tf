terraform {
  backend "s3" {
    shared_credentials_files = [ "./.aws/credentials" ]
    profile = "default"
    region = "ru-central1"

    bucket = "netology-devops-terraform-state-crypt"
    key = "terraform.tfstate"
    

    skip_region_validation = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_s3_checksum = true

    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }

    use_lockfile = true
  }

  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

provider "yandex" {
  cloud_id = var.yc_cloud_id
  folder_id = var.yc_folder_id
}
