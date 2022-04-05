# KV/2 Mount

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_mount.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_path"></a> [path](#input\_path) | Where the secret backend will be mounted | `any` | n/a | yes |
| <a name="input_default_lease_ttl_seconds"></a> [default\_lease\_ttl\_seconds](#input\_default\_lease\_ttl\_seconds) | (Optional) Default lease duration for tokens and secrets in seconds | `number` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Human-friendly description of the mount | `any` | `null` | no |
| <a name="input_max_lease_ttl_seconds"></a> [max\_lease\_ttl\_seconds](#input\_max\_lease\_ttl\_seconds) | (Optional) Maximum possible lease duration for tokens and secrets in seconds | `number` | `null` | no |
| <a name="input_options"></a> [options](#input\_options) | (Optional) Specifies mount type specific options that are passed to the backend | `map(any)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the backend, such as "kv-v2", "pki", "transit", etc | `string` | `"kv-v2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accessor"></a> [accessor](#output\_accessor) | The accessor for this auth method |
| <a name="output_path"></a> [path](#output\_path) | Path to mount the OIDC auth backend |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
