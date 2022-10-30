resource "azurerm_key_vault" "kv" {
  name                        = "kv-${var.environment}-${var.domain}-${var.instance_version}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = false
  tenant_id                   = var.client_config_tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  sku_name = "standard"

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}