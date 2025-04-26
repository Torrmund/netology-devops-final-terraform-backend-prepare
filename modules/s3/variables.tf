variable "kms_key_id" {
  type = string
  default = null
}

variable "bucket_name" {
  type = string
  default = "my-private-bucket"
}

variable "bucket_acl" {
  type = string
  default = "private"
}
