resource "azurerm_servicebus_queue" "service-bus-queue" {
  name                                 = var.name
  namespace_id                         = var.service_bus_namespace_id
  enable_partitioning                  = var.enable_partitioning
  lock_duration                        = var.lock_duration
  dead_lettering_on_message_expiration = var.dead_lettering_on_message_expiration
  max_delivery_count                   = var.max_delivery_count
  status                               = var.status
  enable_batched_operations            = var.enable_batched_operations
  forward_to                           = var.forward_to
  forward_dead_lettered_messages_to    = var.forward_dead_lettered_messages_to



}