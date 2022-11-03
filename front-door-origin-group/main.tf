resource "azurerm_cdn_frontdoor_origin_group" "front-door-origin-group" {
  name                     = "front-door-origin-group-${var.environment}"
  cdn_frontdoor_profile_id = var.front_door_profile_id
}