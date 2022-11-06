resource "azurerm_management_lock" "management-lock" {
  name       = "${var.name}-lock"
  scope      = var.scope
  lock_level = var.lock_level
  notes      = "Resource is locked by Terraform"
}