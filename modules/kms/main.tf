terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
  }
  required_version = "~>1.11.0"
}

resource "yandex_kms_symmetric_key" "kms-bucket-key" {
  name              = var.kms_key_name
  default_algorithm = var.kms_key_default_algorithm
  rotation_period   = var.kms_key_rotation_period
}
