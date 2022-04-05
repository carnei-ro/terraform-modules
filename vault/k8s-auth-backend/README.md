# K8s Auth Backend

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
| [vault_auth_backend.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/auth_backend) | resource |
| [vault_kubernetes_auth_backend_config.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kubernetes_auth_backend_config) | resource |
| [vault_kubernetes_auth_backend_role.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/kubernetes_auth_backend_role) | resource |
| [vault_policy.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_ca_cert"></a> [kubernetes\_ca\_cert](#input\_kubernetes\_ca\_cert) | PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API. | `string` | n/a | yes |
| <a name="input_kubernetes_host"></a> [kubernetes\_host](#input\_kubernetes\_host) | Host must be a host string, a host:port pair, or a URL to the base of the Kubernetes API server. | `string` | n/a | yes |
| <a name="input_token_reviewer_jwt"></a> [token\_reviewer\_jwt](#input\_token\_reviewer\_jwt) | A service account JWT used to access the TokenReview API to validate other JWTs during login. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the auth backend. | `string` | `"Kubernetes"` | no |
| <a name="input_disable_iss_validation"></a> [disable\_iss\_validation](#input\_disable\_iss\_validation) | Disable JWT issuer validation. Allows to skip ISS validation. | `bool` | `true` | no |
| <a name="input_kv_mount"></a> [kv\_mount](#input\_kv\_mount) | Name of the KV Mount to allow read secrets from | `string` | `"kubernetes"` | no |
| <a name="input_path"></a> [path](#input\_path) | Path to mount the K8s auth backend. | `string` | `"kubernetes"` | no |
| <a name="input_role_and_policy_for_reading_based_on_sevice_account"></a> [role\_and\_policy\_for\_reading\_based\_on\_sevice\_account](#input\_role\_and\_policy\_for\_reading\_based\_on\_sevice\_account) | Flag to control the creation of the policy and role to permit reading secrets from path scoped with the service account name. | `bool` | `true` | no |
| <a name="input_token_max_ttl"></a> [token\_max\_ttl](#input\_token\_max\_ttl) | Specifies the maximum token's time-to-live. This overrides the global default. Must be a valid duration string | `string` | `"360"` | no |
| <a name="input_token_ttl"></a> [token\_ttl](#input\_token\_ttl) | Specifies the default token's time-to-live. This overrides the global default. Must be a valid duration string | `string` | `"360"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accessor"></a> [accessor](#output\_accessor) | The accessor for this auth method |
| <a name="output_path"></a> [path](#output\_path) | Path to mount the OIDC auth backend |
| <a name="output_policy_name"></a> [policy\_name](#output\_policy\_name) | Name of the policy that allows reading secrets. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of the role that allows reading secrets |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
