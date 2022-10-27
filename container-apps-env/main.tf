resource "azapi_resource" "dbc-aca-env" {
  type      = "Microsoft.App/managedEnvironments@2022-03-01"
  parent_id = var.resource_group_id
  location  = var.location
  name      = "ctae-${var.environment}-${var.domain}-${var.instance_version}"
  tags = {
    environment = var.environment
    domain      = var.domain
  }

  body = jsonencode({
    properties = {
      appLogsConfiguration = {
        destination = "log-analytics"
        logAnalyticsConfiguration = {
          customerId = var.loganalytics_workspace_id
          sharedKey  = var.loganalytics_workspace_shared_key
        }
      }
    }
  })
}