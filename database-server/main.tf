
resource "azurerm_postgresql_flexible_server" "psql-server" {
  name                   = "psql-${var.environment}-${var.domain}-${var.instance_version}"
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = var.pssql_version
  administrator_login    = var.psql_server_username
  administrator_password = var.psql_server_password
  zone                   = var.zone
  storage_mb             = var.storage_mb
  sku_name               = var.sku_name

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}