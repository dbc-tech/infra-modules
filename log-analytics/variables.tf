variable "location" {
    default = "australiaeast"
    description = "The location/region where the resources will be created"
}

variable "domain" {
    type = string
    description = "The domain name for the resources"
}

variable "instance_version" {
  type = string
  description = "The version of the instance."
}

variable "environment" {
  type= string
  description = "The environment name of the resource group."
}

variable "resource_group_name" {
  type = string
  description = "The resource group name to use for the resources in this module."
}

variable "retention_in_days" {
  type = number
  default = 90
  description = "The number of days to retain logs for."
}

variable "sku" {
    type = string
    default = "PerGB2018"
    description = "The name of the SKU to use for this Log Analytics Workspace."
}