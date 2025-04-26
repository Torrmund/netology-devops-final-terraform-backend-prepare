module "vpc" {
  source = "./modules/vpc"
  
  providers = {
    yandex = yandex
  }
}

module "kms" {
  source = "./modules/kms"
  providers = {
    yandex = yandex
  }
}

module "s3" {
  source              = "./modules/s3"
  kms_key_id          = module.kms.kms_key_id
  bucket_name = var.bucket_name
  providers = {
    yandex = yandex
    random = random
  }
}

module "service_account" {
  source = "./modules/sa"
  folder_id = var.folder_id
  providers = {
    yandex = yandex
  }
}

module "compute_instance" {
  source            = "./modules/compute_instance"
  subnet_id         = module.vpc.subnets[2]
  instance_zone     = var.zone
  public_ssh_key    = var.public_ssh_key
  sa_id             = module.service_account.sa_id
  vm_name           = var.vm_name
  providers = {
    yandex = yandex
  }
}

resource "yandex_kms_symmetric_key_iam_member" "sa-access" {
  symmetric_key_id = module.kms.kms_key_id
  role = "kms.keys.encrypterDecrypter"
  member = "serviceAccount:${module.service_account.sa_id}"
}

# Формирование файла credentials сервисного аккаунта для проекта infrastructure
resource "local_sensitive_file" "sa_credentials" {
  filename = "./.aws/credentials"
  file_permission = 600

  content = <<EOF
[default]
aws_access_key_id = ${module.service_account.sa_key_id}
aws_secret_access_key = ${module.service_account.sa_secret}
EOF
}
