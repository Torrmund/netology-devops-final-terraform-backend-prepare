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
| [yandex_kms_symmetric_key.kms-bucket-key](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/kms_symmetric_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_default_algorithm"></a> [kms\_key\_default\_algorithm](#input\_kms\_key\_default\_algorithm) | n/a | `string` | `"AES_256"` | no |
| <a name="input_kms_key_name"></a> [kms\_key\_name](#input\_kms\_key\_name) | n/a | `string` | `"kms-key"` | no |
| <a name="input_kms_key_rotation_period"></a> [kms\_key\_rotation\_period](#input\_kms\_key\_rotation\_period) | n/a | `string` | `"8760h"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | n/a |
<!-- END_TF_DOCS -->