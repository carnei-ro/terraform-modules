variable "description" {
  description = "The description of the auth backend."
  default     = "Kubernetes"
  type        = string
}

variable "path" {
  description = "Path to mount the K8s auth backend."
  default     = "kubernetes"
  type        = string
}

variable "kubernetes_host" {
  description = "Host must be a host string, a host:port pair, or a URL to the base of the Kubernetes API server."
  type        = string
}

variable "kubernetes_ca_cert" {
  description = "PEM encoded CA cert for use by the TLS client used to talk with the Kubernetes API."
  type        = string
}

variable "token_reviewer_jwt" {
  description = "A service account JWT used to access the TokenReview API to validate other JWTs during login."
  type        = string
}

variable "disable_iss_validation" {
  description = "Disable JWT issuer validation. Allows to skip ISS validation."
  default     = true
  type        = bool
}

variable "role_and_policy_for_reading_based_on_sevice_account" {
  description = "Flag to control the creation of the policy and role to permit reading secrets from path scoped with the service account name."
  default     = true
  type        = bool
}

variable "kv_mount" {
  description = "Name of the KV Mount to allow read secrets from"
  type        = string
  default     = "kubernetes"
}

variable "token_ttl" {
  description = "Specifies the default token's time-to-live. This overrides the global default. Must be a valid duration string"
  default     = "360"
}

variable "token_max_ttl" {
  description = "Specifies the maximum token's time-to-live. This overrides the global default. Must be a valid duration string"
  default     = "360"
}
