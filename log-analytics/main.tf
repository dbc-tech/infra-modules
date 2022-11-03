resource "azurerm_log_analytics_workspace" "log-analytics" {
  name                = "log-${var.environment}-${var.domain}-${var.instance_version}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  tags = {
    environment = var.environment
    domain     = var.domain
  }
}