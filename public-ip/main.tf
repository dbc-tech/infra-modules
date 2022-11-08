resource "azurerm_public_ip" "public-ip" {
  name                = var.name == null ? "pip-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}