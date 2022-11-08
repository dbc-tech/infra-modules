resource "azurerm_windows_function_app" "windows-function-app" {
  name                = var.name == null ? "func-${var.environment}-${var.domain}-${var.instance_version}" : var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_access_key = var.storage_account_access_key
  service_plan_id            = var.service_plan_id

  site_config {}

  app_settings {
    APPINSIGHTS_INSTRUMENTATIONKEY = var.app_insights_instrumentation_key
  }

}