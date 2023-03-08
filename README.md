## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.45.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_blob"></a> [blob](#module\_blob) | git@github.com:t-benedet/tf-azure-module-storage-container.git | n/a |
| <a name="module_kv"></a> [kv](#module\_kv) | git@github.com:t-benedet/tf-azure-module-keyvault.git | n/a |
| <a name="module_sa"></a> [sa](#module\_sa) | git@github.com:t-benedet/tf-azure-module-storage-account.git | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.45.0/docs/resources/resource_group) | resource |
| [azurerm_storage_encryption_scope.encryption](https://registry.terraform.io/providers/hashicorp/azurerm/3.45.0/docs/resources/storage_encryption_scope) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Project description | `string` | `"test"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environnment type | `string` | `"dev5"` | no |
| <a name="input_key_vault_key_permissions"></a> [key\_vault\_key\_permissions](#input\_key\_vault\_key\_permissions) | Liste des autorisations de clé pour le coffre de clés | `list(string)` | <pre>[<br>  "Get",<br>  "Create",<br>  "Delete"<br>]</pre> | no |
| <a name="input_key_vault_retention"></a> [key\_vault\_retention](#input\_key\_vault\_retention) | soft delete retention days | `string` | `"7"` | no |
| <a name="input_key_vault_secret_permissions"></a> [key\_vault\_secret\_permissions](#input\_key\_vault\_secret\_permissions) | Liste des autorisations de secret pour le coffre de clés | `list(string)` | <pre>[<br>  "Backup",<br>  "Delete",<br>  "Get",<br>  "List",<br>  "Purge",<br>  "Recover",<br>  "Restore",<br>  "Set"<br>]</pre> | no |
| <a name="input_key_vault_sku_name"></a> [key\_vault\_sku\_name](#input\_key\_vault\_sku\_name) | SKU du coffre de clés | `string` | `"standard"` | no |
| <a name="input_key_vault_storage_permissions"></a> [key\_vault\_storage\_permissions](#input\_key\_vault\_storage\_permissions) | Liste des autorisations de secret pour le coffre de clés | `list(string)` | <pre>[<br>  "Backup",<br>  "Delete",<br>  "DeleteSAS",<br>  "Get",<br>  "GetSAS",<br>  "List",<br>  "ListSAS",<br>  "Purge",<br>  "Recover",<br>  "RegenerateKey",<br>  "Restore",<br>  "Set",<br>  "SetSAS",<br>  "Update"<br>]</pre> | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner | `string` | `"timothee.benedet@gmail.com"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | `"project"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Emplacement du groupe de ressources | `string` | `"westeurope"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Nom du groupe de ressources | `string` | `"RG5-Fabryk-Test"` | no |
| <a name="input_resourcelocation"></a> [resourcelocation](#input\_resourcelocation) | Location of resource group | `string` | `"westeurope"` | no |
| <a name="input_storage_account_replication_type"></a> [storage\_account\_replication\_type](#input\_storage\_account\_replication\_type) | Fabryk-storage-account-replication-type | `string` | `"GRS"` | no |
| <a name="input_storage_account_tier"></a> [storage\_account\_tier](#input\_storage\_account\_tier) | Fabryk-storage-account-tier | `string` | `"Standard"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Sub ID | `any` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | tenant ID | `any` | n/a | yes |

## Support & Author details

BENEDET Timothée
