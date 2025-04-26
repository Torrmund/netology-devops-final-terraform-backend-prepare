<!-- BEGIN_TF_DOCS -->

## Проект для подготовки backend ресурсов

При помощи данного проекта создаются следующие ресурсы:

* VPC и подсети в каждой зоне доступности
* Object Storage Bucket, который в последствии будет использоваться для хранения стейта проекта "Инфраструктура"
* Симметричный ключ шифрования для содержимого бакета
* Отдельный сервисный аккаунт и необходимые ему права для проекта "Инфраструктура"
* ВМ на базе образа toolbox для взаимодействия с облаком в проекте "Инфраструктура"

## Requirements

| Name                              | Version  |
| --------------------------------- | -------- |
| [terraform](#requirement\_terraform) | ~>1.11.0 |
| [local](#requirement\_local)         | 2.5.2    |
| [random](#requirement\_random)       | 3.7.2    |
| [yandex](#requirement\_yandex)       | 0.140.1  |

## Providers

| Name                      | Version |
| ------------------------- | ------- |
| [local](#provider\_local)    | 2.5.2   |
|  [yandex](#provider\_yandex) | 0.140.1 |

## Modules

| Name                                         | Source                     | Version |
| -------------------------------------------- | -------------------------- | ------- |
| [compute\_instance](#module\_compute\_instance) | ./modules/compute_instance | n/a     |
| [kms](#module\_kms)                             | ./modules/kms              | n/a     |
| [s3](#module\_s3)                               | ./modules/s3               | n/a     |
| [service\_account](#module\_service\_account)   | ./modules/sa               | n/a     |
| [vpc](#module\_vpc)                             | ./modules/vpc              | n/a     |

## Resources

| Name                                                                                                                                                          | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [local_sensitive_file.sa_credentials](https://registry.terraform.io/providers/hashicorp/local/2.5.2/docs/resources/sensitive_file)                               | resource |
| [yandex_kms_symmetric_key_iam_member.sa-access](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/kms_symmetric_key_iam_member) | resource |

## Inputs

| Name                                      | Description | Type       | Default                | Required |
| ----------------------------------------- | ----------- | ---------- | ---------------------- | :------: |
| [bucket\_name](#input\_bucket\_name)         | n/a         | `string` | `"tf-state"`         |    no    |
| [cloud\_id](#input\_cloud\_id)               | n/a         | `any`    | n/a                    |   yes   |
| [folder\_id](#input\_folder\_id)             | n/a         | `any`    | n/a                    |   yes   |
| [public\_ssh\_key](#input\_public\_ssh\_key) | n/a         | `any`    | n/a                    |   yes   |
| [sa\_key\_file](#input\_sa\_key\_file)       | n/a         | `any`    | n/a                    |   yes   |
| [vm\_name](#input\_vm\_name)                 | n/a         | `string` | `"toolbox-instance"` |    no    |
| [zone](#input\_zone)                         | n/a         | `string` | `"ru-central1-d"`    |    no    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
