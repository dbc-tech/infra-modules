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