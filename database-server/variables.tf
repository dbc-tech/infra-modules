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

variable "psql_server_username" {
    type = "string"
    description = "The username for psql server"
}

variable "psql_server_password" {
    type = "string"
    description = "The password for psql server"
}