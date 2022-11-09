variable "location" {
  description = "The location/region where the resource group is created."
  default     = "australiaeast"
}

variable "environment" {
  type        = string
  description = "The environment name of the resource group."
}

variable "domain" {
  type        = string
  description = "The domain will be the name for the project or shared for shared infrastructure."
}

variable "instance_version" {
  type        = string
  default     = "01"
  description = "The version of the instance."
}