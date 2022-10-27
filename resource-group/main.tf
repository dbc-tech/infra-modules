resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = "rd-${var.environment}-${var.domain}-${var.instance_version}"
}