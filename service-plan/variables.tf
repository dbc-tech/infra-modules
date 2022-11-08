variable "name" {
  type        = string
  default     = null
  description = "The name which should be used for this Service Plan. Changing this forces a new AppService to be created."
}
variable "location" {
  default     = "australiaeast"
  description = "The location/region where the resources in this module should be created."
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "environment" {
  type        = string
  description = "The environment name to use for the resources in this module."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group name to use for the resources in this module."
}

variable "instance_version" {
  type        = string
  default     = "01"
  description = "The instance version to use for the resources in this module."
}

variable "os_type" {
  type        = string
  default     = "Linux"
  description = "The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer"
}

variable "sku_name" {
  type        = string
  default     = "Y1"
  description = "The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, P1v2, P2v2, P3v2, P1v3, P2v3, P3v3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, WS3, and Y1."
}