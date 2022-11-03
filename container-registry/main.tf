resource "azurerm_container_registry" "container-registry" {
  name                = "acr${var.environment}dbc${var.domain}${var.instance_version}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = true
  tags = {
    environment = var.environment
    domain      = var.domain
  }
}