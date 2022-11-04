variable "host" {
  type        = string
  description = "the name of the host"
}

variable "frontdoor_profile_id" {
  type        = string
  description = "The ID of the Front Door profile to connect to"
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type        = string
  description = "The environment name to use for the resources in this module."
}