variable "name" {
  description = "Name of App Service Environment"
  type        = string
}

variable "resource_group" {
  description = "Name of the Azure resource group where the Azure Firewall will be deployed"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "os_type" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "app_service_environment_id" {
  type    = string
  default = null
}
