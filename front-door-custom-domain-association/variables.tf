variable "custom_domain_id" {
    description = "The ID of the custom domain to be used"
    type        = string
}

variable "front_door_route_ids" {
    description = "The IDs of the front door routes to be used"
    type        = list(string)
}