variable "kms_key_name" {
  type = string
  default = "kms-key"
}

variable "kms_key_default_algorithm" {
  type = string
  default = "AES_256"
}

variable "kms_key_rotation_period" {
  type = string
  default = "8760h"
}
