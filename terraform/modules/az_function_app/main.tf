resource "azurerm_linux_function_app" "main" {
  count                = var.os_type == "Linux" ? 1 : 0
  name                 = var.name
  resource_group_name  = var.resource_group
  location             = var.location
  service_plan_id      = var.service_plan_id
  storage_account_name = data.azurerm_storage_account.main.name

  storage_account_access_key    = var.storage_access_type == "accesskey" ? data.azurerm_storage_account.main.primary_access_key : null
  functions_extension_version   = var.functions_extension_version != "" ? var.functions_extension_version : "~4"
  public_network_access_enabled = var.public_access
  https_only                    = var.https_only
  virtual_network_subnet_id     = var.subnet_id != "" ? var.subnet_id : null
  storage_uses_managed_identity = var.storage_access_type == "managedidentity" ? true : null

  dynamic "identity" {
    for_each = var.storage_access_type == "managedidentity" ? toset([1]) : toset([])

    content {
      type         = "UserAssigned"
      identity_ids = var.identity_ids
    }
  }
  site_config {}
}

resource "azurerm_windows_function_app" "main" {
  count                = var.os_type == "Windows" ? 1 : 0
  name                 = var.name
  resource_group_name  = var.resource_group
  location             = var.location
  service_plan_id      = var.service_plan_id
  storage_account_name = data.azurerm_storage_account.main.name

  storage_account_access_key    = var.storage_access_type == "accesskey" ? data.azurerm_storage_account.main.primary_access_key : null
  functions_extension_version   = var.functions_extension_version != "" ? var.functions_extension_version : "~4"
  public_network_access_enabled = var.public_access
  https_only                    = var.https_only
  virtual_network_subnet_id     = var.subnet_id != "" ? var.subnet_id : null
  storage_uses_managed_identity = var.storage_access_type == "managedidentity" ? true : null

  dynamic "identity" {
    for_each = var.storage_access_type == "managedidentity" ? toset([1]) : toset([])

    content {
      type         = "UserAssigned"
      identity_ids = var.identity_ids
    }
  }
  site_config {}
}

data "azurerm_storage_account" "main" {
  name                = local.storage_name
  resource_group_name = local.storage_rg
}
