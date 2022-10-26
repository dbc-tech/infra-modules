variable "location" {
  default = "australiaeast"
  description = "The location/region where the resources in this module should be created."
}

variable "resource_boundry" {
  type = "string"
  description = "The resource boundry to use for the resources in this module."
}

variable "environment" {
  type = "string"
  description = "The environment name to use for the resources in this module."
}

variable "resource_group_id" {
  type = "string"
  description = "The resource group id to use for the resources in this module."
}

variable "resource_group_name" {
  type = "string"
  description = "The resource group name to use for the resources in this module."
}

variable "instance_version" {
  default = "01"
  description = "The instance version to use for the resources in this module."
}

variable "keyvault_id"{
    type = "string"
    description = "The keyvault id to use for the resources in this module."
}

variable "client_config_tenant_id" {
  type = "string"
  description = "The tenant id registered in backend under providers."
}

variable "client_config_object_id" {
  type = "string"
  description = "The object id registered in backend under providers."
}