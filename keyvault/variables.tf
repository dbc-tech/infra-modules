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