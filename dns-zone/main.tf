resource "azurerm_dns_zone" "dns" {
  name                = var.dns_domain_name
  resource_group_name = var.resource_group_name
}