module "mod_state_keyvault" {
    source  = "azurenoops/overlays-key-vault/azurerm"

    create_key_vault_resource_group = false
    custom_resource_group_name = module.mod_network_artifacts_rg.resource_group_name
    location = var.location
    environment = var.environment
    workload_name = var.workload_name

    enabled_for_deployment = true
    enabled_for_disk_encryption = true

    public_network_access_enabled = false
    purge_protection_enabled = false # change to true for development
    enable_private_endpoint = false

    admin_objects_ids = [
        data.azuread_client_config.current.object_id
    ]

    reader_objects_ids = [
        module.mod_spn.service_principal_object_id
    ]


    add_tags = var.tags
}