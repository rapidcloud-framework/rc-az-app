resource "azurerm_service_plan" "main" {
  name                       = var.name
  resource_group_name        = var.resource_group
  location                   = var.location
  os_type                    = var.os_type
  sku_name                   = var.sku_name
  app_service_environment_id = var.app_service_environment_id
}

