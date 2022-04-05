resource "vault_policy" "this" {
  count = var.role_and_policy_for_reading_based_on_sevice_account == true ? 1 : 0

  name   = "${var.path}-read-service-account"
  policy = <<-EOP
    path "${var.kv_mount}/data/${vault_auth_backend.this.path}/{{identity.entity.aliases.${vault_auth_backend.this.accessor}.metadata.service_account_name}}*" {
      capabilities = ["read", "list"]
    }
    path "${var.kv_mount}/metadata/${vault_auth_backend.this.path}/{{identity.entity.aliases.${vault_auth_backend.this.accessor}.metadata.service_account_name}}*" {
      capabilities = ["read", "list"]
    }

    path "sys/internal/ui/mounts*" {
      capabilities = ["read", "list"]
    }
    path "auth/token/renew-self" {
      capabilities = ["read", "create", "list", "update"]
    }

    path "sys/mounts" {
      capabilities = ["read"]
    }
  EOP
}

resource "vault_kubernetes_auth_backend_role" "this" {
  count = var.role_and_policy_for_reading_based_on_sevice_account == true ? 1 : 0

  backend                          = vault_auth_backend.this.path
  role_name                        = "${var.path}_sa"
  bound_service_account_names      = ["*"]
  bound_service_account_namespaces = ["*"]
  token_ttl                        = var.token_ttl
  token_max_ttl                    = var.token_max_ttl
  token_policies                   = [vault_policy.this[0].name]
}
