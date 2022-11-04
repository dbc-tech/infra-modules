variable "location" {
  default     = "australiaeast"
  description = "The location/region where the resources in this module should be created."
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type        = string
  description = "The environment name to use for the resources in this module."
}

variable "resource_group_id" {
  type        = string
  description = "The resource group id to use for the resources in this module."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group name to use for the resources in this module."
}

variable "instance_version" {
  default     = "01"
  description = "The instance version to use for the resources in this module."
}

variable "keyvault_id" {
  type        = string
  description = "The keyvault id to use for the resources in this module."
}

variable "client_config_tenant_id" {
  type        = string
  description = "The tenant id registered in backend under providers."
}

variable "client_config_object_id" {
  type        = string
  description = "The object id registered in backend under providers."
}

variable "key_permissions" {
  type        = list(string)
  default     = ["List", "Create", "Get", "Delete", "Purge", "Recover"]
  description = "List of key permissions"
}

variable "secret_permissions" {
  type        = list(string)
  default     = ["List", "Get", "Set", "Delete", "Purge", "Restore", "Recover"]
  description = "List of secret permissions"
}

variable "storage_permissions" {
  type        = list(string)
  default     = ["List", "Get", "Delete", "Purge"]
  description = "List of storage permissions"
}