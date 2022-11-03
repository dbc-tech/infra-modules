variable "environment" {
  type = string
  description = "The environment to deploy to"
}

variable "front_door_endpoint_id" {
  type = string
  description = "The frontdoor endpoint id"
}

variable "front_door_origin_group_id" {
    type = string
    description = "The frontdoor origin group id"
}

variable "front_door_origin_ids" {
  type = list(string)
  description = "The frontdoor origin ids"
}

variable "front_door_rule_set_ids" {
  type = list(string)
  description = "The frontdoor rule set ids"
}

variable "route_enable" {
    type = bool
    description = "Enable route"
}

variable "front_door_custom_domain_ids" {
  type = list(string)
  description = "The frontdoor custom domain ids"
}

variable "link_to_default_domain" {
  type = bool
  description = "Link to default domain"
}