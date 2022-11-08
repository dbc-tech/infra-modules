resource "azurerm_application_insights" "application-insights" {
  name                = var.name == null ? "appi-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  application_type    = "Node.JS"

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}