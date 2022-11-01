variable "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.log-analytics.id
}

variable "log_analytics_shared_key" {
  value = azurerm_log_analytics_workspace.log-analytics.primary_shared_key
}