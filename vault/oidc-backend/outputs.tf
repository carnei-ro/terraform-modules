output "accessor" {
  value       = vault_jwt_auth_backend.oidc.accessor
  description = "The accessor for this auth method"
}

output "path" {
  value       = vault_jwt_auth_backend.oidc.path
  description = "Path to mount the OIDC auth backend"
}
