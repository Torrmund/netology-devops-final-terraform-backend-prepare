<!-- BEGIN_TF_DOCS -->

## Проект для подготовки backend ресурсов

При помощи данного проекта создаются следующие ресурсы:

* VPC и подсети в каждой зоне доступности
* Object Storage Bucket, который в последствии будет использоваться для хранения стейта проекта "Инфраструктура"
* Симметричный ключ шифрования для содержимого бакета
* Отдельный сервисный аккаунт и необходимые ему права для проекта "Инфраструктура"
* ВМ на базе образа toolbox для взаимодействия с облаком в проекте "Инфраструктура"

## Requirements

| Name                                                                       | Version  |
| -------------------------------------------------------------------------- | -------- |
| `<a name="requirement_terraform"></a>` [terraform](#requirement\_terraform) | ~>1.11.0 |
| `<a name="requirement_local"></a>` [local](#requirement\_local)             | 2.5.2    |
| `<a name="requirement_random"></a>` [random](#requirement\_random)          | 3.7.2    |
| `<a name="requirement_yandex"></a>` [yandex](#requirement\_yandex)          | 0.140.1  |

## Providers

| Name                                                        | Version |
| ----------------------------------------------------------- | ------- |
| `<a name="provider_local"></a>` [local](#provider\_local)    | 2.5.2   |
| `<a name="provider_yandex"></a>` [yandex](#provider\_yandex) | 0.140.1 |

## Modules

| Name                                                                                    | Source                     | Version |
| --------------------------------------------------------------------------------------- | -------------------------- | ------- |
| `<a name="module_compute_instance"></a>` [compute\_instance](#module\_compute\_instance) | ./modules/compute_instance | n/a     |
| `<a name="module_kms"></a>` [kms](#module\_kms)                                          | ./modules/kms              | n/a     |
| `<a name="module_s3"></a>` [s3](#module\_s3)                                             | ./modules/s3               | n/a     |
| `<a name="module_service_account"></a>` [service\_account](#module\_service\_account)    | ./modules/sa               | n/a     |
| `<a name="module_vpc"></a>` [vpc](#module\_vpc)                                          | ./modules/vpc              | n/a     |

## Resources

| Name                                                                                                                                                          | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [local_sensitive_file.sa_credentials](https://registry.terraform.io/providers/hashicorp/local/2.5.2/docs/resources/sensitive_file)                               | resource |
| [yandex_kms_symmetric_key_iam_member.sa-access](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/kms_symmetric_key_iam_member) | resource |

## Inputs

| Name                                                                              | Description | Type       | Default                | Required |
| --------------------------------------------------------------------------------- | ----------- | ---------- | ---------------------- | :------: |
| `<a name="input_bucket_name"></a>` [bucket\_name](#input\_bucket\_name)            | n/a         | `string` | `"tf-state"`         |    no    |
| `<a name="input_cloud_id"></a>` [cloud\_id](#input\_cloud\_id)                     | n/a         | `any`    | n/a                    |   yes   |
| `<a name="input_folder_id"></a>` [folder\_id](#input\_folder\_id)                  | n/a         | `any`    | n/a                    |   yes   |
| `<a name="input_public_ssh_key"></a>` [public\_ssh\_key](#input\_public\_ssh\_key) | n/a         | `any`    | n/a                    |   yes   |
| `<a name="input_sa_key_file"></a>` [sa\_key\_file](#input\_sa\_key\_file)          | n/a         | `any`    | n/a                    |   yes   |
| `<a name="input_vm_name"></a>` [vm\_name](#input\_vm\_name)                        | n/a         | `string` | `"toolbox-instance"` |    no    |
| `<a name="input_zone"></a>` [zone](#input\_zone)                                   | n/a         | `string` | `"ru-central1-d"`    |    no    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
