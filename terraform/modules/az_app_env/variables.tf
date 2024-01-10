variable "name" {
  description = "Name of App Service Environment"
  type        = string
}

variable "resource_group" {
  description = "Name of the Azure resource group where the Azure Firewall will be deployed"
  type        = string
}

variable "pricing_tier" {
  type    = string
  default = "I1"
}


variable "subnet_id" {
  description = "ID of the subnet where the Azure Firewall will be deployed"
  type        = string
  default     = null
}


variable "internal_load_balancing_mode" {
  type    = string
  default = "None"
}

variable "allowed_user_ip_cidrs" {
  type    = list(string)
  default = null
}
