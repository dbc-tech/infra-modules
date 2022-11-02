resource "azurerm_cdn_frontdoor_profile" "front-door-profile" {
  name                = "fd-${var.environment}-${var.domain}-${var.instance_version}"
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}