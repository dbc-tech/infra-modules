resource "azurerm_cdn_frontdoor_origin" "front-door-origin" {
  name                                  = "front-door-origin-${var.host_name}"
  cdn_frontdoor_origin_group_id = var.front_door_origin_group_id
  enabled                               = var.enabled

  certificate_name_check_enabled = var.certificate_name_check_enabled

  host_name          = var.host_name
  http_port          = var.http_port
  https_port         = var.https_port
  origin_host_header = "www.${var.host_name}.com"
  priority           = var.priority
  weight             = var.weight
}