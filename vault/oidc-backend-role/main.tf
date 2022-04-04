locals {
  allowed_redirect_uris = length(var.allowed_redirect_uris) == 0 ? ["${var.vault_addr}/ui/vault/auth/${var.backend_path}/oidc/callback", "${var.vault_addr}/${var.backend_path}/callback"] : var.allowed_redirect_uris
}
resource "vault_jwt_auth_backend_role" "this" {
  backend   = var.backend_path
  role_name = var.role_name

  allowed_redirect_uris = local.allowed_redirect_uris

  role_type      = "oidc"
  oidc_scopes    = var.oidc_scopes
  token_policies = var.token_policies

  verbose_oidc_logging = var.verbose_oidc_logging

  user_claim     = var.user_claim
  claim_mappings = var.claim_mappings
  bound_claims   = var.bound_claims
}
