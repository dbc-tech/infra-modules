variable "location" {
  description = "The location/region where the resource group is created."
  default     = "australiaeast"
}

variable "environment" {
  type        = string
  description = "The environment name of the resource group."
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "instance_version" {
  type        = string
  default     = "01"
  description = "The version of the instance."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where service bus resource will be deployed"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "The tier of the service bus."
}

variable "account_replication_type" {
  type        = string
  default     = "GRS"
  description = "Defines the type of replication to use for this storage account"
}