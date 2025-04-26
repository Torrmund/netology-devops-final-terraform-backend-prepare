variable "vpc_name" {
  description = "Name of vpc"
  type = string
  default = "infra"
}

variable "vpc_subnet_prefix" {
  description = "Prefix of subnets"
  type = string
  default = "subnet"
}

variable "vpc_subnet_zones" {
  type = list(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
}