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

  app_settings {
    APPINSIGHTS_INSTRUMENTATIONKEY      = var.app_insights_instrumentation_key
    FUNCTIONS_WORKER_RUNTIME            = "node"
    WEBSITE_NODE_DEFAULT_VERSION        = "16"
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "true"
    WEBSITE_ENABLE_SYNC_UPDATE_SITE     = "true"
    WEBSITE_RUN_FROM_PACKAGE            = "true"
    FUNCTION_APP_EDIT_MODE              = "readonly"
    SERVICEBUS_CONNECTION               = var.servicebus_connection
  }
}