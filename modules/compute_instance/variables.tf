variable "platform" {
   type          = string
   default       = "standard-v2"
   description   = "VM platform."
   validation {
     condition = contains(["standard-v1", "standard-v2", "standard-v3"], var.platform)
     error_message = "Invalid platform provided."
   }
}

variable "vm_name" {
  type = string
  default = "toolbox-vm"
}

variable "instance_zone" {}

variable "sa_id" {}

variable "subnet_id" {}

variable "description" {
  type = string
  default = "toolbox_vm"
}

variable "preemptible" {
  type = bool
  default = true
}

variable "instance_cores" {
  type    = number
  default = 2
}

variable "instance_memory" {
  type    = number
  default = 4
}

variable "instance_core_fraction" {
  type    = number
  default = 100
}

variable "boot_disk_type" {
  type    = string
  default = "network-ssd"
}

variable "boot_disk_size" {
  type    = number
  default = 30
}

variable "public_ip" {
  type    = bool
  default = true
}

variable "public_ssh_key" {}

variable "image_family" {
  type    = string
  default = "toolbox"
}
