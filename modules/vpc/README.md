<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.11.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.140.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.140.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.infra-vpc](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.infra-subnet](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of vpc | `string` | `"infra"` | no |
| <a name="input_vpc_subnet_prefix"></a> [vpc\_subnet\_prefix](#input\_vpc\_subnet\_prefix) | Prefix of subnets | `string` | `"subnet"` | no |
| <a name="input_vpc_subnet_zones"></a> [vpc\_subnet\_zones](#input\_vpc\_subnet\_zones) | n/a | `list(string)` | <pre>[<br/>  "ru-central1-a",<br/>  "ru-central1-b",<br/>  "ru-central1-d"<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnets"></a> [subnets](#output\_subnets) | n/a |
<!-- END_TF_DOCS -->