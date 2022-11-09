resource "azurerm_nat_gateway" "nat-gateway" {
  name                = var.name == null ? "ng-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}