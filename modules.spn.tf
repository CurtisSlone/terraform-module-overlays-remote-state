#
# SPN That Effects Changes In The Environment
#

module "mod_spn" {
    source  = "azurenoops/overlays-service-principal/azuread"
     # Give SPN a name relevant to the app registration
    service_principal_name = var.service_principal_name
    service_principal_description = var.service_principal_description
    

    # False automatically sets spn password
    # When set to true, comment out password rotation
    enable_service_principal_certificate = false 
    service_principal_password_rotation_in_years = 1

    service_principal_assignments = [
        {
            scope = "subscriptions/${data.azurerm_client_config.current.subscription_id}"
            role_definition_name = "Contributor"
        }
    ]
}