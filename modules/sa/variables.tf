variable "roles" {
  type = list(string)
  default = [ "compute.editor", "vpc.admin", "storage.uploader", "dns.editor"]
}

variable "sa_static_key_description" {
  type = string
  default = "Static access key for S3 operations"
}

variable "folder_id" {}