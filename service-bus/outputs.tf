output "service_bus_namepace_id" {
  value = azurerm_servicebus_namespace.service-bus.id
}

output "default_primary_connection_string" {
  value = azurerm_servicebus_namespace.service-bus.default_primary_connection_string
}