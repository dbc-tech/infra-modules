resource "azurerm_cdn_frontdoor_endpoint" "front-door-endpoint" {
  name                     = "endpoint-${var.host}"
  cdn_frontdoor_profile_id = var.frontdoor_profile_id

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}