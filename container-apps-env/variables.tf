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

variable "loganalytics_workspace_id" {
  type        = string
  description = "The resource group id to use for the resources in this module."
}

variable "loganalytics_workspace_shared_key" {
  type        = string
  description = "The resource group id to use for the resources in this module."
}

variable "instance_version" {
  type        = string
  default     = "01"
  description = "The instance version to use for the resources in this module."
}