resource "azurerm_app_service" "main" {
  name                = var.name
  resource_group_name = var.resource_group
  location            = var.location
  app_service_plan_id = var.service_plan_id
}

