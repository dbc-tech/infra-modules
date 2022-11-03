resource "azurerm_cdn_frontdoor_custom_domain" "custom-domain" {
  name                     = "${var.sub_domain}.${var.host_name}"
  cdn_frontdoor_profile_id = var.front_door_profile_id
  dns_zone_id              = var.dns_zone_id
  host_name                = var.host_name

  tls {
    certificate_type    = var.certificate_type
    minimum_tls_version = var.minimum_tls_version
  }
}