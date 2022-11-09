variable "name" {
  type        = string
  description = "Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created."
}

variable "service_bus_namespace_id" {
  type        = string
  description = "The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created."
}

variable "lock_duration" {
  type        = string
  description = "Specifies the duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute."
  default     = "PT1M"
}

variable "dead_lettering_on_message_expiration" {
  type        = bool
  description = "Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false"
  default     = false
}

variable "max_delivery_count" {
  type        = number
  default     = 10
  description = "The maximum delivery count. A message is automatically dead lettered after this number of deliveries. default value is 10."
}

variable "status" {
  type        = string
  default     = "Active"
  description = "The status of the Queue. Possible values are Active, Creating, Deleting, Disabled, ReceiveDisabled, Renaming, SendDisabled, Unknown. Note that Restoring is not accepted. Defaults to Active"
}

variable "enable_batched_operations" {
  type        = bool
  default     = true
  description = "Boolean flag which controls whether server-side batched operations are enabled. Defaults to true"
}

variable "forward_to" {
  type        = string
  default     = null
  description = "The name of the Queue or Topic to forward the messages to. Note that the forwarding cannot be changed if there are existing messages in the queue. Requires lock_duration to be 5 minutes or less."
}

variable "forward_dead_lettered_messages_to" {
  type        = string
  default     = null
  description = "The name of a Queue or Topic to automatically forward dead lettered messages to."
}

variable "enable_partitioning" {
  type        = bool
  default     = false
  description = "Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard."
}