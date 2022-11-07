resource "azurerm_servicebus_namespace" "service-bus" {
  name                = var.name == null ? "sb-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}