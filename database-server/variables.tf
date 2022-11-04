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

variable "pssql_version" {
  type        = string
  description = "The version of the SQL Server to use."
  default     = "12"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group name to use for the resources in this module."
}

variable "instance_version" {
  default     = "01"
  description = "The instance version to use for the resources in this module."
}

variable "psql_server_username" {
  type        = string
  description = "The username for psql server"
}

variable "psql_server_password" {
  type        = string
  description = "The password for psql server"
}

variable "zone" {
  type        = string
  default     = "1"
  description = "The number of zones server should be deployed to"
}

variable "storage_mb" {
  type        = number
  description = "The storage size in MB for the server"
  default     = 32768
}

variable "sku_name" {
  type        = string
  description = "The sku name for the server"
  default     = "GP_Standard_D4s_v3"
}