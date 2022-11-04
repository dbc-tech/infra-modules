resource "azurerm_key_vault_secret" "kv-password" {
  name         = var.secret_name
  value        = var.secret_value
  key_vault_id = var.kv_id
}