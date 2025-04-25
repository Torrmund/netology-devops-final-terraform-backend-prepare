# Создание бакета для хранения стейта
resource "yandex_storage_bucket" "state-bucket" {
  bucket = var.state_bucket_name
  folder_id = var.yc_folder_id
  acl = var.state_backet_acl
  versioning {
    enabled = true
  }
  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.state-key.id
        sse_algorithm = "aws:kms"
      }
    }
  }
  depends_on = [ yandex_iam_service_account.tf-sa, yandex_resourcemanager_folder_iam_member.tf-sa-storage-permissions ]
  
}
