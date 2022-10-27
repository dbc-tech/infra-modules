resource "azurerm_log_analytics_workspace" "dbc-loganalytics" {
  name                = "log-${var.environment}-${var.domain}-${var.instance_version}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "PerGB2018"
  retention_in_days   = 90
  tags = {
    environment = var.environment
    domain     = var.domain
  }
}