resource "azurerm_storage_account" "storage" {
  name                     = "st${var.environment}dbc${var.domain}${var.instance_version}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}