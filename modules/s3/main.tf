terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
  required_version = "~>1.11.0"
}

resource "yandex_storage_bucket" "tf-state-bucket" {
  bucket = "${var.bucket_name}-${random_id.bucket_id.hex}"
  acl    = var.bucket_acl

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_key_id
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
