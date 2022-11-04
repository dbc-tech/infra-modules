variable "secret_name" {
  type = string
  description = "The secret name to save in keyvault."
}

variable "secret_value" {
    type = string
    description = "The secret value to save in keyvault."
}

variable "kv_id" {
    type = string
    description = "The keyvault id to create the secret in."
}