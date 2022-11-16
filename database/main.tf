terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.28.0"
    }

    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = ">= 1.15.0"
    }
  }
}

provider "postgresql" {
  host             = var.pssql_fqdn
  username         = var.psql_admin_username
  password         = var.psql_admin_password
  sslmode          = "verify-full"
  connect_timeout  = 15
  expected_version = "12"
  superuser        = false
}

resource "azurerm_postgresql_flexible_server_database" "database" {
  name      = var.name
  server_id = var.server_id
  collation = var.collation
  charset   = var.charset
}

resource "postgresql_role" "db-rw-role" {
  name            = var.readwrite_role_username
  login           = true
  create_database = false
  password        = var.readwrite_password
}

resource "postgresql_grant" "db-rw-role-grant" {
  database    = var.name
  role        = postgresql_role.db-rw-role.name
  object_type = "database"
  privileges  = ["CREATE", "CONNECT", "TEMPORARY"]
}

resource "postgresql_role" "db-app-role" {
  name            = var.app_role_username
  login           = true
  create_database = false
  password        = var.app_password
}

resource "postgresql_grant" "db-app-role-grant" {
  database    = var.name
  role        = postgresql_role.db-app-role.name
  object_type = "database"
  privileges  = ["CREATE", "CONNECT", "TEMPORARY"]
}

resource "postgresql_role" "db-readonly-role" {
  name            = var.readonly_role_username
  login           = true
  create_database = false
  password        = var.readonly_password
}

resource "postgresql_grant" "db-readonly-role-grant" {
  database    = var.name
  role        = postgresql_role.db-readonly-role.name
  schema      = "public"
  object_type = "table"
  privileges  = ["SELECT"]
}