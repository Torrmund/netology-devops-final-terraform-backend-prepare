terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.140.1"
    }
  }
  required_version = "~>1.11.0"
}

resource "yandex_vpc_network" "infra-vpc" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "infra-subnet" {
  count          = 3
  name           = "${var.vpc_subnet_prefix}-${count.index + 1}"
  zone           = element(var.vpc_subnet_zones, count.index)
  network_id     = yandex_vpc_network.infra-vpc.id
  v4_cidr_blocks = ["10.0.${count.index}.0/24"]
}
