resource "vault_auth_backend" "this" {
  type        = "kubernetes"
  path        = var.path
  description = var.description
}

resource "vault_kubernetes_auth_backend_config" "this" {
  backend                = vault_auth_backend.this.path
  kubernetes_host        = var.kubernetes_host
  kubernetes_ca_cert     = var.kubernetes_ca_cert
  token_reviewer_jwt     = var.token_reviewer_jwt
  disable_iss_validation = var.disable_iss_validation
}
