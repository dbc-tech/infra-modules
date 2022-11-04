variable "location" {
  default = "australiaeast"
  description = "The location/region where the resources in this module should be created."
}

variable "domain" {
  type = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type = string
  description = "The environment name to use for the resources in this module."
}

variable "resource_group_id" {
  type = string
  description = "The resource group id to use for the resources in this module."
}

variable "resource_group_name" {
  type = string
  description = "The resource group name to use for the resources in this module."
}

variable "instance_version" {
  default = "01"
  description = "The instance version to use for the resources in this module."
}

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