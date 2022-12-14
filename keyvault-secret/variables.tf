variable "secret_name" {
  type        = string
  description = "The secret name to save in keyvault."
}

variable "secret_value" {
  type        = string
  description = "The secret value to save in keyvault."
  sensitive   = true
}

variable "kv_id" {
  type        = string
  description = "The keyvault id to create the secret in."
}

variable "content_type" {
  type        = string
  default     = null
  description = "The content type of the secret."
}

variable "client_config_id" {
  type        = string
  default     = null
  description = "The client config id to use for the secret."
}