resource "azurerm_service_plan" "service-plan" {
  name                = var.name == null ? "plan-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}