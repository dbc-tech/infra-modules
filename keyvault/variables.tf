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

variable "client_config_tenant_id" {
  type        = string
  description = "The client config id registered in backend under providers."
}

variable "sku_name" {
  type        = string
  default     = "standard"
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 7
  description = "The number of days that the deleted secret should be retained. This value can be between 7 and 90 days."
}

variable "name" {
  type        = string
  default     = null
  description = "The name of the Key Vault."
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