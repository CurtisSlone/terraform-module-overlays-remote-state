data "azurerm_client_config" "current" {}

data "azuread_client_config" "current" {}

data "azuread_group" "KV_Readers" {
  display_name = "KV-Readers"
}

data "azuread_group" "KV_Admins" {
  display_name = "KV-Admins"
}