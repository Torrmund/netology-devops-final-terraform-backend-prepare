variable "yc_token" {
  description = "OAuth token for YC"
  type = string
  sensitive = true
}

variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type = string
}

variable "yc_folder_id" {
  description = "YC folder id"
  type = string
}

variable "environment_label" {
  type = string
  default = "development"
}

variable "yc_zone" {
  description = "Зона доступности по умолчанию"
  type = string
  default = "ru-central1-d"
}

variable "sa_name" {
  description = "Имя сервсиного аккаунта"
  type = string
  default = "terraform-sa"
}

variable "sa_description" {
  description = "Описание сервисного аккаунта"
  type = string
  default = "Сервисный аккаунт для управления стейтом и ресурсами облака"
}

variable "sa_static_key_description" {
  description = "Описание статического ключа сервисного аккаунта"
  type = string
  default = "Статический ключ для сервисного аккаунта"
}

variable "sa_ycc_role" {
  description = "Роль сервисного аккаунта при доступе к Yandex Compute Cloud"
  type = string
  default = "compute.editor"
}

variable "sa_vpc_role" {
  description = "Роль сервисного аккаунта при доступе к VPC"
  type = string
  default = "vpc.publicAdmin"
}

variable "sa_storage_role" {
  description = "Роль сервисного аккаунта при доступе к Yandex Object Storage"
  type = string
  default = "storage.uploader"
}

variable "bucket_key_name" {
  description = "Имя ключа для шифрования бакета"
  type = string
  default = "state-bucket-key"
}

variable "bucket_key_description" {
  type = string
  default = "KMS ключ для шифрования state бакета"
}

variable "bucket_key_default_algorithm" {
  type = string
  default = "AES_256"
}

variable "state_bucket_name" {
  description = "Имя бакета для стейта. Должно быть уникальным в рамках всего Object Storage!!!"
  type = string
  default = "netology-devops-terraform-state-crypt"
}

variable "state_backet_acl" {
  description = "ACL state бакета"
  type = string
  default = "private"
}

variable "sa_credentials_file_path" {
  description = "Путь по которому сохранится файл с кредами сервисного аккаунта после его создания"
  type = string
  default = "../infrastructure/.aws/credentials"
}