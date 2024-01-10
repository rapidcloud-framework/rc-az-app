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

variable "service_plan_id" {
  type = string
}

variable "os_type" {
  type = string

}

variable "storage_account_name" {
  type = string
}

variable "storage_access_type" {
  type = string
}

variable "public_access" {
  type = bool
}

variable "https_only" {
  type = bool
}

variable "functions_extension_version" {
  type = string
}

variable "subnet_id" {
  type = string

}

variable "identity_ids" {
  type    = list(string)
  default = []
}


