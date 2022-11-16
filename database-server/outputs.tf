output "database_server_id" {
  value = azurerm_postgresql_flexible_server.psql-server.id
}

output "database_server_fqdn" {
  value = azurerm_postgresql_flexible_server.psql-server.fqdn
}