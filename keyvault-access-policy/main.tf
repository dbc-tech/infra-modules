resource "azurerm_key_vault_access_policy" "keyvault-client-config" {
  key_vault_id = var.keyvault_id
  tenant_id    = var.client_config_tenant_id
  object_id    = var.client_config_object_id

  key_permissions = [
    "List",
    "Create",
    "Get",
    "Delete",
    "Purge",
    "Recover"
  ]

  secret_permissions = [
    "List",
    "Get",
    "Set",
    "Delete",
    "Purge",
    "Restore",
    "Recover"
  ]

  storage_permissions = [
    "List",
    "Get",
    "Delete",
    "Purge",
  ]

  tags = {
    environment = var.environment
    domain = var.domain
  }
}