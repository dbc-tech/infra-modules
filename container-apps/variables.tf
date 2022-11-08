variable "name" {
  type        = string
  default     = null
  description = "Name of the resource"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the resource will be created"
}

variable "location" {
  type        = string
  default     = "australiaeast"
  description = "Location of the resource"
}

variable "resource_group_id" {
  type        = string
  description = "The resource group id to use for the resources in this module."
}

variable "aca_environment_id" {
  type        = string
  description = "The aca environment id to use for the resources in this module."
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type        = string
  description = "The environment name to use for the resources in this module."
}

variable "instance_version" {
  type        = string
  default     = "01"
  description = "The instance version to use for the resources in this module."
}

variable "container_apps" {
  type = list(object({
    name            = string
    image           = string
    tag             = string
    containerPort   = number
    ingress_enabled = bool
    min_replicas    = number
    max_replicas    = number
    cpu_requests    = number
    mem_requests    = string
  }))

  default = [{
    image           = "hello-world"
    name            = "example-image"
    tag             = "latest"
    containerPort   = 80
    ingress_enabled = true
    min_replicas    = 1
    max_replicas    = 2
    cpu_requests    = 0.5
    mem_requests    = "1.0Gi"
    env = [
      {
        name  = "GREETING"
        value = "Hello from the devil"
      }
    ]
  }]
}