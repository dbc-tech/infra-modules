resource "azurerm_servicebus_topic" "service-bus-topic" {
  name         = var.name
  namespace_id = var.service_bus_namespace_id
}