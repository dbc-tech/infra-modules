variable "name" {
  type        = string
  description = "Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created."
}

variable "service_bus_namespace_id" {
  type        = string
  description = "The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created."
}

variable "subscription_list" {
  type = list(string)
  default = null
    description = "A list of subscriptions to create for a topic."
}