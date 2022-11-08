resource "azurerm_virtual_network" "virtual-network" {
  name                = var.name == null ? "vnet-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}