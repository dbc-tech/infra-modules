resource "azurerm_key_vault" "keyvault" {
  name                        = var.name == null ? "kv-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = false
  tenant_id                   = var.client_config_tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = true
  sku_name                    = var.sku_name


  tags = {
    environment = var.environment
    domain      = var.domain
  }
}