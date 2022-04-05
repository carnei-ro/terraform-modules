variable "path" {
  description = "Where the secret backend will be mounted"
}

variable "type" {
  description = "Type of the backend, such as \"kv-v2\", \"pki\", \"transit\", etc"
  default     = "kv-v2"
}

variable "description" {
  description = "(Optional) Human-friendly description of the mount"
  default     = null
}

variable "default_lease_ttl_seconds" {
  description = "(Optional) Default lease duration for tokens and secrets in seconds"
  type        = number
  default     = null
}

variable "max_lease_ttl_seconds" {
  description = "(Optional) Maximum possible lease duration for tokens and secrets in seconds"
  type        = number
  default     = null
}

variable "options" {
  description = "(Optional) Specifies mount type specific options that are passed to the backend"
  type        = map(any)
  default     = {}
}
