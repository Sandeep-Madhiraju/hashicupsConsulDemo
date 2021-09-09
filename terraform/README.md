# hashicupsConsulDemo

## Authentication
- AWS: Authentication via Doormat.  `# doormat aws -a xxx --tf-local --tf-push`
- GCP: Service Account.  Cred file is in `hashicupsConsulDemo/terraform/.keyring`
- Azure: Managed Identity - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/managed_service_identity




Service Principal https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret 

    az account set --subscription="SUBSCRIPTION_ID"
    az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"
These values map to the Terraform variables like so:
appId is the client_id defined above.
password is the client_secret defined above.
tenant is the tenant_id defined above.
