# OIDC Backend

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
| [vault_jwt_auth_backend.oidc](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oidc_client_id"></a> [oidc\_client\_id](#input\_oidc\_client\_id) | Client ID used for OIDC backends | `string` | n/a | yes |
| <a name="input_oidc_client_secret"></a> [oidc\_client\_secret](#input\_oidc\_client\_secret) | Client Secret used for OIDC backends | `string` | n/a | yes |
| <a name="input_oidc_discovery_url"></a> [oidc\_discovery\_url](#input\_oidc\_discovery\_url) | The OIDC Discovery URL, without any .well-known component (base path) | `string` | n/a | yes |
| <a name="input_default_lease_ttl"></a> [default\_lease\_ttl](#input\_default\_lease\_ttl) | Specifies the default time-to-live. If set, this overrides the global default. Must be a valid duration string | `string` | `"48h"` | no |
| <a name="input_default_role"></a> [default\_role](#input\_default\_role) | The default role to use if none is provided during login | `string` | `"user"` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the auth backend | `string` | `"OpenID"` | no |
| <a name="input_max_lease_ttl"></a> [max\_lease\_ttl](#input\_max\_lease\_ttl) | Specifies the maximum time-to-live. If set, this overrides the global default. Must be a valid duration string | `string` | `"48h"` | no |
| <a name="input_oidc_response_types"></a> [oidc\_response\_types](#input\_oidc\_response\_types) | List of response types to request. Allowed values are 'code' and 'id\_token'. Defaults to ["code"]. Note: id\_token may only be used if oidc\_response\_mode is set to form\_post | `list(string)` | <pre>[<br>  "code"<br>]</pre> | no |
| <a name="input_path"></a> [path](#input\_path) | Path to mount the OIDC auth backend | `string` | `"oidc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accessor"></a> [accessor](#output\_accessor) | The accessor for this auth method |
| <a name="output_path"></a> [path](#output\_path) | Path to mount the OIDC auth backend |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
