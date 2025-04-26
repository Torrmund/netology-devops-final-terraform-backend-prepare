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
| [yandex_compute_instance.toolbox](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/compute_instance) | resource |
| [yandex_compute_image.image](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_disk_size"></a> [boot\_disk\_size](#input\_boot\_disk\_size) | n/a | `number` | `30` | no |
| <a name="input_boot_disk_type"></a> [boot\_disk\_type](#input\_boot\_disk\_type) | n/a | `string` | `"network-ssd"` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"toolbox_vm"` | no |
| <a name="input_image_family"></a> [image\_family](#input\_image\_family) | n/a | `string` | `"toolbox"` | no |
| <a name="input_instance_core_fraction"></a> [instance\_core\_fraction](#input\_instance\_core\_fraction) | n/a | `number` | `100` | no |
| <a name="input_instance_cores"></a> [instance\_cores](#input\_instance\_cores) | n/a | `number` | `2` | no |
| <a name="input_instance_memory"></a> [instance\_memory](#input\_instance\_memory) | n/a | `number` | `4` | no |
| <a name="input_instance_zone"></a> [instance\_zone](#input\_instance\_zone) | n/a | `any` | n/a | yes |
| <a name="input_platform"></a> [platform](#input\_platform) | VM platform. | `string` | `"standard-v2"` | no |
| <a name="input_preemptible"></a> [preemptible](#input\_preemptible) | n/a | `bool` | `true` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | n/a | `bool` | `true` | no |
| <a name="input_public_ssh_key"></a> [public\_ssh\_key](#input\_public\_ssh\_key) | n/a | `any` | n/a | yes |
| <a name="input_sa_id"></a> [sa\_id](#input\_sa\_id) | n/a | `any` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `any` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | n/a | `string` | `"toolbox-vm"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->