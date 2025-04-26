output "subnets" {
  value = yandex_vpc_subnet.infra-subnet[*].id
}
