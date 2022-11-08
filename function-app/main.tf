resource "azurerm_linux_function_app" "linux-function-app" {
  name                = var.name == null ? "func-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_access_key = var.storage_account_access_key
  service_plan_id            = var.service_plan_id

  tags = {
    environment = var.environment
    domain      = var.domain
  }

  site_config {}
}