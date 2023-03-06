resource "azurerm_resource_group" "rg" {

    name               = var.resource_group_name
    location           = var.resource_group_location
    #environment        = var.resource_group_environment
   #description        = var.resource_group_environment
   #project            = var.project
}

#resource "azurerm_key_vault" "kv" {
#    
#    name = var.key_vault_name
#    location   = var.key_vault_location
#    resource_group_name = var.resource_group_name
#    tenant_id = var.tenant_id
#    sku_name    = var.key_vault_sku_name
#
#    access_policy = [ {
#      tenant_id =  var.tenant_id
#      #application_id = "value"
#      certificate_permissions = var.key_vault_certificate_permissions
#      key_permissions = var.key_vault_key_permissions
#      #object_id = "value"
#      secret_permissions = var.key_vault_secret_permissions
#      storage_permissions = var.key_vault_storage_permissions
#    } ]
#
#    depends_on = [ azurerm_resource_group.rg ]
#}

resource "azurerm_storage_account" "sa"  {

    name                       = var.storage_account_name
    resource_group_name        = var.resource_group_name
    location                   = var.storage_account_location
    account_tier               = var.storage_account_tier
    account_replication_type   = var.storage_account_replication_type
    #kv_name                    = var.key_vault_name
    #kv_rgname                  = var.resource_group_name 

    depends_on = [ azurerm_resource_group.rg ]

}

resource "azurerm_storage_container" "blob" {

    name = "${var.azurerm_storage_container}-tfstate"
    storage_account_name = var.storage_account_name
    container_access_type = var.azurerm_storage_container_access_type

      depends_on = [ azurerm_storage_account.sa ]
    
}resource "azurerm_resource_group" "rg" {

    name               = var.resource_group_name
    location           = var.resource_group_location
    #environment        = var.resource_group_environment
   #description        = var.resource_group_environment
   #project            = var.project
}

#resource "azurerm_key_vault" "kv" {
#    
#    name = var.key_vault_name
#    location   = var.key_vault_location
#    resource_group_name = var.resource_group_name
#    tenant_id = var.tenant_id
#    sku_name    = var.key_vault_sku_name
#
#    access_policy = [ {
#      tenant_id =  var.tenant_id
#      #application_id = "value"
#      certificate_permissions = var.key_vault_certificate_permissions
#      key_permissions = var.key_vault_key_permissions
#      #object_id = "value"
#      secret_permissions = var.key_vault_secret_permissions
#      storage_permissions = var.key_vault_storage_permissions
#    } ]
#
#    depends_on = [ azurerm_resource_group.rg ]
#}

resource "azurerm_storage_account" "sa"  {

    name                       = var.storage_account_name
    resource_group_name        = var.resource_group_name
    location                   = var.storage_account_location
    account_tier               = var.storage_account_tier
    account_replication_type   = var.storage_account_replication_type
    #kv_name                    = var.key_vault_name
    #kv_rgname                  = var.resource_group_name 

    depends_on = [ azurerm_resource_group.rg ]

}

resource "azurerm_storage_container" "blob" {

    name = "${var.azurerm_storage_container}-tfstate"
    storage_account_name = var.storage_account_name
    container_access_type = var.azurerm_storage_container_access_type

      depends_on = [ azurerm_storage_account.sa ]
    
}
