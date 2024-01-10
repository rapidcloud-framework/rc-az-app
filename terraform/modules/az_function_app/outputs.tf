output "azurerm_linux_function_app" {
  value = var.os_type == "Linux" ? azurerm_linux_function_app.main[0].id : null
}

output "azurerm_windows_function_app" {
  value = var.os_type == "Windows" ? azurerm_windows_function_app.main[0].id : null
}
