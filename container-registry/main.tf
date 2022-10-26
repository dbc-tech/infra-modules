resource "azurerm_container_registry" "dbc-container-registry" {
  name                = "acr${var.environment}${var.resource_boundry}${var.instance_version}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
  tags = {
    environment = var.environment
  }
}