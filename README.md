# Terraform Module Overlay Remote State

Automates remote state generation for faster development, testing, and deployment times.

### Resources Created
Resource Group
KeyVault
App Registration
Service Principal Name
Storage Account
Storage Container

### Caveats

There is an assumption that future Terraform IaC created will be within the same subscription as the remote state. This is because the SPN/App Registration created in this overlay will be assigned a Contributor role to the current subscription that you are authenticated to.

### Prerequisites

Use az cli to login to the subscription that your remote state backend will be hosted.

```
az login
az account set --subscription <subscription-ID>
```

### Creation Flow


### Obtaining Client Secret
```
terraform output -json client_secret
```