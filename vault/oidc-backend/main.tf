resource "vault_jwt_auth_backend" "oidc" {
  description         = var.description
  path                = var.path
  type                = "oidc"
  default_role        = var.default_role
  oidc_discovery_url  = var.oidc_discovery_url
  oidc_client_id      = var.oidc_client_id
  oidc_client_secret  = var.oidc_client_secret
  oidc_response_types = var.oidc_response_types
  tune {
    allowed_response_headers     = []
    audit_non_hmac_request_keys  = []
    audit_non_hmac_response_keys = []
    default_lease_ttl            = var.default_lease_ttl
    listing_visibility           = "unauth"
    max_lease_ttl                = var.max_lease_ttl
    passthrough_request_headers  = []
    token_type                   = "default-service"
  }
}
