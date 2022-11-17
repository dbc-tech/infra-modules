
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

# The Azure feature Allow access to Azure services can be enabled by setting start_ip_address and end_ip_address to 0.0.0.0
resource "azurerm_sql_firewall_rule" "sql-firewall-rule" {
  name                = "EnableAllAzureIps"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_flexible_server.psql-server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}