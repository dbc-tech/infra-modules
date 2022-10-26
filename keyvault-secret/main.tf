resource "azurerm_key_vault_secret" "oto_acr_password" {
  name         = var.secret_name
  value        = var.secret_value
  key_vault_id = var.kv_id
  content_type = var.contnet_type
}