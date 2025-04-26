terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
  }
  required_version = "~>1.11.0"
}

data "yandex_compute_image" "image" {
  family = var.image_family
}

resource "yandex_compute_instance" "toolbox" {
  name = var.vm_name
  platform_id = var.platform
  zone = var.instance_zone
  hostname = var.vm_name
  service_account_id = var.sa_id
  description = "${var.description} {{terraform managed}}"
  scheduling_policy {
    preemptible = var.preemptible
  }

  resources {
    cores         = var.instance_cores
    memory        = var.instance_memory
    core_fraction = var.instance_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.image.image_id
      type     = var.boot_disk_type
      size     = var.boot_disk_size
    }
  }

  network_interface {
    subnet_id          = var.subnet_id
    nat                = var.public_ip
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_ssh_key}"
  }

}