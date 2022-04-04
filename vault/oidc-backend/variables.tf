variable "description" {
  description = "The description of the auth backend"
  default     = "OpenID"
}

variable "path" {
  description = "Path to mount the OIDC auth backend"
  default     = "oidc"
}

variable "default_role" {
  description = "The default role to use if none is provided during login"
  default     = "user"
}

variable "oidc_discovery_url" {
  description = "The OIDC Discovery URL, without any .well-known component (base path)"
  type        = string
}

variable "oidc_client_id" {
  description = "Client ID used for OIDC backends"
  type        = string
}

variable "oidc_client_secret" {
  description = "Client Secret used for OIDC backends"
  type        = string
}

variable "oidc_response_types" {
  description = "List of response types to request. Allowed values are 'code' and 'id_token'. Defaults to [\"code\"]. Note: id_token may only be used if oidc_response_mode is set to form_post"
  type        = list(string)
  default     = ["code"]
}

variable "default_lease_ttl" {
  description = "Specifies the default time-to-live. If set, this overrides the global default. Must be a valid duration string"
  default     = "48h"
}

variable "max_lease_ttl" {
  description = "Specifies the maximum time-to-live. If set, this overrides the global default. Must be a valid duration string"
  default     = "48h"
}
