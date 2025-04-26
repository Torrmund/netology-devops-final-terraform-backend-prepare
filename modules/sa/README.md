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
| [yandex_iam_service_account.sa-tf-infra](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/iam_service_account) | resource |
| [yandex_iam_service_account_static_access_key.sa-tf-infra-static-key](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_resourcemanager_folder_iam_member.editor](https://registry.terraform.io/providers/yandex-cloud/yandex/0.140.1/docs/resources/resourcemanager_folder_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `any` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | n/a | `list(string)` | <pre>[<br/>  "compute.editor",<br/>  "vpc.admin",<br/>  "storage.uploader",<br/>  "dns.editor"<br/>]</pre> | no |
| <a name="input_sa_static_key_description"></a> [sa\_static\_key\_description](#input\_sa\_static\_key\_description) | n/a | `string` | `"Static access key for S3 operations"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sa_id"></a> [sa\_id](#output\_sa\_id) | n/a |
| <a name="output_sa_key_id"></a> [sa\_key\_id](#output\_sa\_key\_id) | n/a |
| <a name="output_sa_secret"></a> [sa\_secret](#output\_sa\_secret) | n/a |
<!-- END_TF_DOCS -->