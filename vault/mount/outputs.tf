output "path" {
  value       = vault_mount.this.path
  description = "Path to mount the OIDC auth backend"
}

output "accessor" {
  value       = vault_mount.this.accessor
  description = "The accessor for this auth method"
}
