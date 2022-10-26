
resource "azurerm_postgresql_flexible_server" "dbc-psql-server" {
  name                   = "psql-${var.environment}-${var.resource_boundry}-${var.instance_version}"
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = "12"
  administrator_login    = var.psql_server_username
  administrator_password = var.psql_server_password
  zone                   = "1"
  storage_mb             = 32768
  sku_name               = "GP_Standard_D4s_v3"

  tags = {
    environment = var.environment
  }
}