variable "name" {
  type        = string
  description = "A name for the lock, used to identify the lock in the UI"
}

variable "scope" {
  type        = string
  description = "The scope of the lock. This will be the resource's id"
}

variable "lock_level" {
  type        = string
  default     = "CanNotDelete"
  description = "Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly"
}