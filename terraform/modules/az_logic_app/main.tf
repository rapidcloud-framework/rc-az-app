resource "azurerm_logic_app_workflow" "main" {
  name                = var.name
  resource_group_name = var.resource_group
  location            = var.location
}

