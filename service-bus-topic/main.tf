resource "azurerm_servicebus_topic" "service-bus-topic" {
  name         = var.name
  namespace_id = var.service_bus_namespace_id
}

resource "azurerm_servicebus_subscription" "topic_subscription" {
  count                                     = length(var.subscription_list)
  name                                      = element(var.subscription_list, count.index)
  topic_id                                  = azurerm_servicebus_topic.service-bus-topic.id
  max_delivery_count                        = 1
  dead_lettering_on_message_expiration      = true
  dead_lettering_on_filter_evaluation_error = true
}