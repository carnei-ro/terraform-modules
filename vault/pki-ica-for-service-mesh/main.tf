resource "vault_mount" "this" {
  path                      = "carneiro/v1/intermediates/mesh_leaf/${replace(lower(var.service_mesh_name), " ", "-")}/${var.ca_version}"
  type                      = "pki"
  description               = "PKI engine hosting intermediate CA ${upper(var.service_mesh_name)} Service Mesh ${var.ca_version} signed by Mesh CA"
  default_lease_ttl_seconds = var.default_lease_ttl_seconds
  max_lease_ttl_seconds     = var.max_lease_ttl_seconds
}

resource "vault_pki_secret_backend_intermediate_cert_request" "this" {
  depends_on   = [vault_mount.this]
  backend      = vault_mount.this.path
  type         = var.type
  common_name  = "Intermediate CA Mesh Leaf ${upper(var.service_mesh_name)} ${var.ca_version}"
  key_type     = "rsa"
  key_bits     = "2048"
  organization = "carneiro"
  ou           = "Infra SRE - ${upper(var.service_mesh_name)} Mesh"
  country      = "BR"
  province     = "SP"
  locality     = "Campinas"
}

resource "vault_pki_secret_backend_root_sign_intermediate" "this" {
  depends_on           = [vault_pki_secret_backend_intermediate_cert_request.this]
  backend              = var.mesh_ca_backend_path
  csr                  = vault_pki_secret_backend_intermediate_cert_request.this.csr
  common_name          = "Intermediate CA Mesh Leaf ${upper(var.service_mesh_name)} ${var.ca_version}"
  exclude_cn_from_sans = true
  organization         = "carneiro"
  ou                   = "Infra SRE - ${upper(var.service_mesh_name)}"
  country              = "BR"
  province             = "SP"
  locality             = "Campinas"
  max_path_length      = 1
  ttl                  = var.ca_ttl_seconds

  alt_names  = var.alt_names
  ip_sans    = var.ip_sans
  uri_sans   = var.uri_sans
  other_sans = var.other_sans
}

resource "vault_pki_secret_backend_intermediate_set_signed" "this" {
  depends_on  = [vault_pki_secret_backend_root_sign_intermediate.this]
  backend     = vault_mount.this.path
  certificate = format("%s\n%s", vault_pki_secret_backend_root_sign_intermediate.this.certificate, var.mesh_ca_bundle)
}

resource "vault_generic_secret" "this" {
  count = var.export_to_vault_kv_enabled == true ? 1 : 0

  path = var.export_to_vault_kv_path
  data_json = jsonencode({
    "root-cert.pem"  = var.mesh_ca_bundle
    "ca-key.pem"     = vault_pki_secret_backend_intermediate_cert_request.this.private_key
    "cert-chain.pem" = format("%s\n%s", vault_pki_secret_backend_root_sign_intermediate.this.certificate, var.mesh_ca_bundle)
    "ca-cert.pem"    = vault_pki_secret_backend_root_sign_intermediate.this.certificate
  })
  disable_read = true
}
