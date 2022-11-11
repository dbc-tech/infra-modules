variable "name" {
  type        = string
  description = "Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created."
}

variable "service_bus_topic_id" {
  type        = string
  description = "The ID of the ServiceBus topic to create this subscription for."
}

variable "max_delivery_count" {
  type        = number
  description = "The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default is 10."
  default     = 1
}

variable "dead_lettering_on_message_expiration" {
  type        = bool
  description = "Should the subscription dead letter messages when a message expires. default is false."
  default     = false
}

variable "dead_lettering_on_filter_evaluation_error" {
  type        = bool
  description = "Should the subscription dead letter messages when a filter evaluation error occurs. default is false."
  default     = false
}