resource "azurerm_key_vault_access_policy" "keyvault-client-config" {
  key_vault_id = var.keyvault_id
  tenant_id    = var.client_config_tenant_id
  object_id    = var.client_config_object_id

  key_permissions = var.key_permissions
  secret_permissions = var.secret_permissions
  storage_permissions = var.storage_permissions
}