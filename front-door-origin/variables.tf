variable "host_name" {
  type = string
  description = "the name of the host"
}

variable "front_door_origin_group_id" {
  type = string
  description = "The ID of the Front Door profile to connect to"
}

variable "environment" {
  type = string
  description = "The environment name to use for the resources in this module."
}

variable "certificate_name_check_enabled" {
  type = bool
  description = "certificate name check enabled"
  default = true
}

variable "enabled" {
  type = bool
  description = "enable or disable the front door origin"
  default = true
}

variable "http_port" {
  type = number
  description = "http port"
  default = 80
}

variable "https_port" {
  type = number
  description = "https port"
  default = 443
}

variable "priority" {
    type = number
    description = "priority"
    default = 1
}

variable "weight" {
  type = number
  description = "weight"
  default = 50
}