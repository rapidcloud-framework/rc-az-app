locals {
  storage_name = var.storage_account_name != "" ? split("/", var.storage_account_name)[8] : null
  storage_rg   = var.storage_account_name != "" ? split("/", var.storage_account_name)[4] : null
}
