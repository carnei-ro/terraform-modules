variable "service_mesh_name" {
  description = "Service Mesh Name"
  type        = string
}

variable "ca_version" {
  description = "Version of the Certificate Authority - useful when upgrading the CA"
  default     = "v1"
}

variable "ca_ttl_seconds" {
  description = "Duration for this CA in seconds"
  default     = 63113852
}

variable "default_lease_ttl_seconds" {
  description = "Default lease duration for tokens and secrets in seconds"
  default     = 63113852
}

variable "max_lease_ttl_seconds" {
  description = "Maximum possible lease duration for tokens and secrets in seconds"
  default     = 157784630
}

variable "type" {
  description = "Type of intermediate to create. Must be either \"exported\" or \"internal\""
  default     = "internal"
}

variable "alt_names" {
  description = "(Optional) List of alternative names"
  type        = list(string)
  default     = []
}

variable "ip_sans" {
  description = "(Optional) List of alternative IPs"
  type        = list(string)
  default     = []
}

variable "uri_sans" {
  description = "(Optional) List of alternative URIs"
  type        = list(string)
  default     = []
}

variable "other_sans" {
  description = "(Optional) List of other SANs"
  type        = list(string)
  default     = []
}

variable "mesh_ca_bundle" {
  description = "CA Bundle for the Signer CA (Mesh CA)"
  type        = string
}

variable "mesh_ca_backend_path" {
  description = "Vault PKI mount path for the Signer CA (Mesh CA)"
  type        = string
}
