variable "vault_addr" {
  type        = string
  description = "The endpoint to Vault. e.g: https://my-vault.com"
  default     = ""
}

variable "backend_path" {
  type        = string
  description = "The unique path of the auth backend to configure."
}

variable "role_name" {
  type        = string
  description = "The name of the role."
}

variable "allowed_redirect_uris" {
  description = "The list of allowed values for redirect_uri during OIDC logins. If null redirect_uris will be created based on 'var.vault_addr'."
  type        = list(string)
  default     = []
}

variable "oidc_scopes" {
  description = "List of OIDC scopes to be used with an OIDC role. The standard scope \"openid\" is automatically included and need not be specified."
  type        = list(string)
  default     = ["openid", "profile", "email"]
}

variable "token_policies" {
  description = "List of policies to encode onto generated tokens. Depending on the auth method, this list may be supplemented by user/group/other values."
  type        = list(string)
  default     = ["default"]
}

variable "verbose_oidc_logging" {
  description = "Log received OIDC tokens and claims when debug-level logging is active. Not recommended in production since sensitive information may be present in OIDC responses."
  type        = bool
  default     = false
}

variable "user_claim" {
  description = "The claim to use to uniquely identify the user; this will be used as the name for the Identity entity alias created due to a successful login."
  type        = string
  default     = "email"
}

variable "claim_mappings" {
  description = "Map of claims (keys) to be copied to specified metadata fields (values)."
  type        = map(any)
  default = {
    "name"        = "name",
    "family_name" = "family_name"
    "given_name"  = "given_name"
    "email"       = "email"
  }
}

variable "bound_claims" {
  description = "Map of claims to values to match against. A claim's value must be a string, which may contain one value or multiple comma-separated values, e.g. \"red\" or \"red,green,blue\"."
  type        = map(any)
  default     = null
}
