resource "azurerm_servicebus_namespace" "service-bus" {
  name                = "sb-${var.environment}-${var.domain}-${var.instance_version}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = {
    environment = var.environment
    domain     = var.domain
  }
}