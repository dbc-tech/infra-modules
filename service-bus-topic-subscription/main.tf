resource "azurerm_servicebus_subscription" "service-bus-topic-subscription" {
  name                                      = var.name
  topic_id                                  = var.service_bus_topic_id
  max_delivery_count                        = var.max_delivery_count
  dead_lettering_on_message_expiration      = var.dead_lettering_on_message_expiration
  dead_lettering_on_filter_evaluation_error = var.dead_lettering_on_filter_evaluation_error
}