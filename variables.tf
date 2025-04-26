variable "cloud_id" {}
variable "folder_id" {}
variable "sa_key_file" {}
variable "public_ssh_key" {}
variable "vm_name" {
  default = "toolbox-instance"
}
variable "bucket_name" {
  default = "tf-state"
}
variable "zone" {
  default = "ru-central1-d"
}