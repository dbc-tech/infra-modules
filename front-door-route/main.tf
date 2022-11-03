resource "azurerm_cdn_frontdoor_route" "front-door-route" {
  name                          = "front-door-route-${var.environment}"
  cdn_frontdoor_endpoint_id     = var.front_door_endpoint_id
  cdn_frontdoor_origin_group_id = var.front_door_origin_group_id
  cdn_frontdoor_origin_ids      = var.front_door_origin_ids
  cdn_frontdoor_rule_set_ids    = var.front_door_rule_set_ids
  enabled                       = var.route_enable

  forwarding_protocol    = "HttpsOnly"
  https_redirect_enabled = true
  patterns_to_match      = ["/*"]
  supported_protocols    = ["Http", "Https"]

  cdn_frontdoor_custom_domain_ids = var.front_door_custom_domain_ids
  link_to_default_domain          = var.link_to_default_domain

  cache {
    query_string_caching_behavior = "IgnoreSpecifiedQueryStrings"
    query_strings                 = ["account", "settings"]
    compression_enabled           = true
    content_types_to_compress     = ["text/html", "text/javascript", "text/xml"]
  }
}