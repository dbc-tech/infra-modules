variable "location" {
  default = "australiaeast"
  description = "The location/region where the resources in this module should be created."
}

variable "domain" {
  type = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type = string
  description = "The environment name to use for the resources in this module."
}

variable "resource_group_id" {
  type = string
  description = "The resource group id to use for the resources in this module."
}

variable "resource_group_name" {
  type = string
  description = "The resource group name to use for the resources in this module."
}

variable "instance_version" {
  default = "01"
  description = "The instance version to use for the resources in this module."
}

variable "route_rule_name" {
    type = string
    description = "The route rule name to use for the resources in this module."
}

variable "frontend_endpoints" {
    type = list(string)
    description = "The frontend endpoints to use for the resources in this module."
}

variable "backend_pool_name" {
    type = string
    description = "The backend pool name to use for the resources in this module."
}

variable "backend_load_balancing_name" {
    type = string
    description = "The backend load balancing name to use for the resources in this module."
}

variable "backend_health_probe_name" {
    type = string
    description = "The backend health probe name to use for the resources in this module."
}

variable "host_header" {
    type = string
    description = "The host header to use for the resources in this module."
}

variable "host_address" {
    type = string
    description = "The host address to use for the resources in this module."
}

variable "http_port" {
    type = string
    description = "The http port to use for the resources in this module."
}

variable "https_port" {
    type = string
    description = "The https port to use for the resources in this module."
}

variable "load_balancer_name" {
    type = string
    description = "The load balancer name to use for the resources in this module."
}

variable "health_probe_name" {
    type = string
    description = "The health probe name to use for the resources in this module."
}

variable "frontend_endpoint_name" {
    type = string
    description = "The frontend endpoint name to use for the resources in this module."
}

variable "frontend_host_name" {
    type = string
    description = "The frontend host name to use for the resources in this module."
}