output "path" {
  value       = vault_auth_backend.this.path
  description = "Path to mount the OIDC auth backend"
}

output "accessor" {
  value       = vault_auth_backend.this.accessor
  description = "The accessor for this auth method"
}

output "role_name" {
  value       = var.role_and_policy_for_reading_based_on_sevice_account == true ? vault_kubernetes_auth_backend_role.this[0].role_name : null
  description = "Name of the role that allows reading secrets"
}

output "policy_name" {
  value       = var.role_and_policy_for_reading_based_on_sevice_account == true ? vault_policy.this[0].name : null
  description = "Name of the policy that allows reading secrets."
}
