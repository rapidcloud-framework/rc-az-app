resource "azurerm_app_service_environment" "main" {
  name                         = var.name
  resource_group_name          = var.resource_group
  subnet_id                    = var.subnet_id
  internal_load_balancing_mode = var.internal_load_balancing_mode
  allowed_user_ip_cidrs        = var.allowed_user_ip_cidrs 
  pricing_tier                 = var.pricing_tier
}

