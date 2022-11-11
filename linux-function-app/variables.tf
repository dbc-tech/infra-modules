variable "name" {
  type        = string
  default     = null
  description = "Name of the resource"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the resource will be created"
}

variable "location" {
  type        = string
  default     = "australiaeast"
  description = "Location of the resource"
}

variable "storage_account_access_key" {
  type        = string
  description = "The access key which will be used to access the backend storage account for the Function App"
}

variable "service_plan_id" {
  type        = string
  description = "The ID of the App Service Plan within which to create this Function App."
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type        = string
  description = "The environment name to use for the resources in this module."
}

variable "instance_version" {
  type        = string
  default     = "01"
  description = "The instance version to use for the resources in this module."
}

variable "app_insights_instrumentation_key" {
  type        = string
  default     = null
  description = "The instrumentation key for the Application Insights instance to associate with this Function App."
}

variable "servicebus_connection" {
  type        = string
  default     = null
  description = "The connection string for the Service Bus namespace to which this Function App should be connected."
}

variable "app_settings" {
  type        = map(any)
  default     = {}
  description = "A map of key-value pairs for App Settings and custom values"
}

variable "site_config" {
  type        = map(any)
  default     = {}
  description = "A site_config block"
}