output "resource_group_name" {
  value = module.mod_network_artifacts_rg.resource_group_name
}

output "storage_account_name" {
  value = azurerm_storage_account.tfstatesa.name
}

output "container_name" {
  value = azurerm_storage_container.tfstatesc.name
}

output "client_name" {
  value = module.mod_spn.client_id
}

output "client_secret" {
  value = module.mod_spn.client_secret
  sensitive = true
}