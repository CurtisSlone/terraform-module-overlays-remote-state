module "mod_state_keyvault" {
    source  = "azurenoops/overlays-key-vault/azurerm"

    depends_on = [
      module.mod_network_artifacts_rg,
      module.mod_spn
    ]

    create_key_vault_resource_group = false
    custom_resource_group_name = module.mod_network_artifacts_rg.resource_group_name
    custom_name = "${lower(var.org_name)}tfdevkv"
    location = var.location
    environment = var.environment
    workload_name = var.workload_name

    public_network_access_enabled = false
    purge_protection_enabled = false # change to true for development
    enable_private_endpoint = false
    

    
    rbac_authorization_enabled = true

    admin_objects_ids = [
        data.azuread_group.KV_Admins.object_id
    ]

    reader_objects_ids = [
        data.azuread_group.KV_Readers.object_id
    ]


    add_tags = var.tags
}