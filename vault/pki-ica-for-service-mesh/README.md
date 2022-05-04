PKI Intermedate CA for Service Mesh
===========

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
| [vault_generic_secret.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) | resource |
| [vault_mount.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_pki_secret_backend_intermediate_cert_request.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_intermediate_cert_request) | resource |
| [vault_pki_secret_backend_intermediate_set_signed.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_intermediate_set_signed) | resource |
| [vault_pki_secret_backend_root_sign_intermediate.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_root_sign_intermediate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mesh_ca_backend_path"></a> [mesh\_ca\_backend\_path](#input\_mesh\_ca\_backend\_path) | Vault PKI mount path for the Signer CA (Mesh CA) | `string` | n/a | yes |
| <a name="input_mesh_ca_bundle"></a> [mesh\_ca\_bundle](#input\_mesh\_ca\_bundle) | CA Bundle for the Signer CA (Mesh CA) | `string` | n/a | yes |
| <a name="input_service_mesh_name"></a> [service\_mesh\_name](#input\_service\_mesh\_name) | Service Mesh Name | `string` | n/a | yes |
| <a name="input_alt_names"></a> [alt\_names](#input\_alt\_names) | (Optional) List of alternative names | `list(string)` | `[]` | no |
| <a name="input_ca_ttl_seconds"></a> [ca\_ttl\_seconds](#input\_ca\_ttl\_seconds) | Duration for this CA in seconds | `number` | `63113852` | no |
| <a name="input_ca_version"></a> [ca\_version](#input\_ca\_version) | Version of the Certificate Authority - useful when upgrading the CA | `string` | `"v1"` | no |
| <a name="input_default_lease_ttl_seconds"></a> [default\_lease\_ttl\_seconds](#input\_default\_lease\_ttl\_seconds) | Default lease duration for tokens and secrets in seconds | `number` | `63113852` | no |
| <a name="input_export_to_vault_kv_enabled"></a> [export\_to\_vault\_kv\_enabled](#input\_export\_to\_vault\_kv\_enabled) | Flag to export CA, Bundle, Certificate and PrivateKey (if 'type is exported') to KV path in vault | `bool` | `false` | no |
| <a name="input_export_to_vault_kv_path"></a> [export\_to\_vault\_kv\_path](#input\_export\_to\_vault\_kv\_path) | Vault KV Path to store exported CA, Bundle, Certificate and PrivateKey (if 'type is exported') | `string` | `null` | no |
| <a name="input_ip_sans"></a> [ip\_sans](#input\_ip\_sans) | (Optional) List of alternative IPs | `list(string)` | `[]` | no |
| <a name="input_max_lease_ttl_seconds"></a> [max\_lease\_ttl\_seconds](#input\_max\_lease\_ttl\_seconds) | Maximum possible lease duration for tokens and secrets in seconds | `number` | `157784630` | no |
| <a name="input_other_sans"></a> [other\_sans](#input\_other\_sans) | (Optional) List of other SANs | `list(string)` | `[]` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of intermediate to create. Must be either "exported" or "internal" | `string` | `"internal"` | no |
| <a name="input_uri_sans"></a> [uri\_sans](#input\_uri\_sans) | (Optional) List of alternative URIs | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ca"></a> [ca](#output\_ca) | n/a |
| <a name="output_certificate"></a> [certificate](#output\_certificate) | n/a |
| <a name="output_certificate_bundle"></a> [certificate\_bundle](#output\_certificate\_bundle) | n/a |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
