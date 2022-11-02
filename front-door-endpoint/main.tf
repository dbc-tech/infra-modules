resource "azurerm_cdn_frontdoor_endpoint" "example" {
  name                     = "endpoint-${var.host_name}"
  cdn_frontdoor_profile_id = var.frontdoor_profile_id

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}