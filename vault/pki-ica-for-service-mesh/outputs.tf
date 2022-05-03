output "certificate" {
  value = vault_pki_secret_backend_root_sign_intermediate.this.certificate
}

output "certificate_bundle" {
  value = format("%s\n%s", vault_pki_secret_backend_root_sign_intermediate.this.certificate, var.mesh_ca_bundle)
}

output "ca" {
  value = var.mesh_ca_bundle
}

output "private_key" {
  sensitive = true
  value     = vault_pki_secret_backend_intermediate_cert_request.this.private_key
}
