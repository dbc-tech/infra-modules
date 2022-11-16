variable "name" {
  type        = string
  description = "Name for the database"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group name to use for the resources in this module."
}

variable "server_id" {
  type        = string
  description = "The id of the Postgres Server on which to create this database."
}

variable "charset" {
  type        = string
  default     = "UTF8"
  description = "Specifies the Charset for the PostgreSQL Database, which needs to be a valid PostgreSQL Charset. Changing this forces a new resource to be created."
}

variable "collation" {
  type        = string
  default     = "en_US.UTF8"
  description = "Specifies the Collation for the PostgreSQL Database, which needs to be a valid PostgreSQL Collation. Changing this forces a new resource to be created."
}

variable "domain" {
  type        = string
  description = "The domain name of the resources"
}

variable "pssql_fqdn" {
  type        = string
  description = "The FQDN of the SQL Server"
}

variable "psql_admin_username" {
  type        = string
  description = "The username of the SQL Server"
  sensitive   = true
}

variable "psql_admin_password" {
  type        = string
  description = "The password of the SQL Server"
  sensitive   = true
}

variable "readwrite_password" {
  type        = string
  description = "Password for read write user role"
  sensitive   = true
}

variable "app_password" {
  type        = string
  description = "Password for application user role"
  sensitive   = true
}

variable "readonly_password" {
  type        = string
  description = "Password for read only user role"
  sensitive   = true
}

variable "readonly_role_username" {
  type        = string
  description = "Username for read only user role"
}

variable "readwrite_role_username" {
  type        = string
  description = "Username for read write user role"
}

variable "app_role_username" {
  type        = string
  description = "Username for application user role"
}