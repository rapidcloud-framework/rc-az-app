variable "name" {
  description = "Name of Logic App"
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

