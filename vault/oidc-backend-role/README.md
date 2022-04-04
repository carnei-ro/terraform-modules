# OIDC Backend Role

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
| [vault_jwt_auth_backend_role.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_path"></a> [backend\_path](#input\_backend\_path) | The unique path of the auth backend to configure. | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the role. | `string` | n/a | yes |
| <a name="input_allowed_redirect_uris"></a> [allowed\_redirect\_uris](#input\_allowed\_redirect\_uris) | The list of allowed values for redirect\_uri during OIDC logins. If null redirect\_uris will be created based on 'var.vault\_addr'. | `list(string)` | `[]` | no |
| <a name="input_bound_claims"></a> [bound\_claims](#input\_bound\_claims) | Map of claims to values to match against. A claim's value must be a string, which may contain one value or multiple comma-separated values, e.g. "red" or "red,green,blue". | `map(any)` | `null` | no |
| <a name="input_claim_mappings"></a> [claim\_mappings](#input\_claim\_mappings) | Map of claims (keys) to be copied to specified metadata fields (values). | `map(any)` | <pre>{<br>  "email": "email",<br>  "family_name": "family_name",<br>  "given_name": "given_name",<br>  "name": "name"<br>}</pre> | no |
| <a name="input_oidc_scopes"></a> [oidc\_scopes](#input\_oidc\_scopes) | List of OIDC scopes to be used with an OIDC role. The standard scope "openid" is automatically included and need not be specified. | `list(string)` | <pre>[<br>  "openid",<br>  "profile",<br>  "email"<br>]</pre> | no |
| <a name="input_token_policies"></a> [token\_policies](#input\_token\_policies) | List of policies to encode onto generated tokens. Depending on the auth method, this list may be supplemented by user/group/other values. | `list(string)` | <pre>[<br>  "default"<br>]</pre> | no |
| <a name="input_user_claim"></a> [user\_claim](#input\_user\_claim) | The claim to use to uniquely identify the user; this will be used as the name for the Identity entity alias created due to a successful login. | `string` | `"email"` | no |
| <a name="input_vault_addr"></a> [vault\_addr](#input\_vault\_addr) | The endpoint to Vault. e.g: https://my-vault.com | `string` | `""` | no |
| <a name="input_verbose_oidc_logging"></a> [verbose\_oidc\_logging](#input\_verbose\_oidc\_logging) | Log received OIDC tokens and claims when debug-level logging is active. Not recommended in production since sensitive information may be present in OIDC responses. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bound_claims"></a> [bound\_claims](#output\_bound\_claims) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
