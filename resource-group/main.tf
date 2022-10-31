resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = "rg-${var.environment}-${var.domain}-${var.instance_version}"

  tags = {
    environment = var.environment
    domain     = var.domain
  }
}