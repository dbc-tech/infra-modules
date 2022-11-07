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

variable "depends_on" {
  type        = any
  default     = null
  description = "A list of resources which this resource depends on."
}