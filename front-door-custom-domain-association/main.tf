resource "azurerm_cdn_frontdoor_custom_domain_association" "front-door-custom-domain-association" {
  cdn_frontdoor_custom_domain_id = var.custom_domain_id
  cdn_frontdoor_route_ids        = var.front_door_route_ids
}