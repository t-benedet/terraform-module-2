locals {

  #resourceGroup = var.RESOURCEGROUPNAME
  location      = var.resourcelocation
  environment   = var.environment
  owner         = "example@kyndryl.com"
  description   = "demo lz deployment"
  project       = "lzdemo1"
  #token         = var.TOKEN
}


resource "azurerm_resource_group" "rg" {

    name               = var.resource_group_name
    location           = var.resource_group_location
    tags = {
        environment    = var.environment
        description    = "${var.description} resource group"
        project        = var.project
    }
}


module "kv" {

    # source   = "git@github.com:t-benedet/tf-azure-module-keyvault.git"
    source   = "git::https://github.com/t-benedet/tf-azure-module-keyvault.git"

    enabled_for_disk_encryption         = false
    key_permissions                     = var.key_vault_key_permissions
    keyvault_name                       = lower("kv-${var.project}-${var.environment}")
    purge_protection_enabled            = false
    resource_group_name                 = var.resource_group_name
    resource_location                   = var.resourcelocation
    secret_permissions                  = var.key_vault_secret_permissions
    sku_name                            = var.key_vault_sku_name
    soft_delete_retention_days          = var.key_vault_retention
    storage_permissions                 = var.key_vault_storage_permissions
    tags = {
        environment   = var.environment
        description   = "${var.description} Key Vault"
        project       = var.project
    }

    depends_on = [ azurerm_resource_group.rg ]
}

module "sa" {

    #source   = "git@github.com:t-benedet/tf-azure-module-storage-account.git"
    source   = "git::https://github.com/t-benedet/tf-azure-module-storage-account.git"


    name                        = lower("sa${var.project}${var.environment}")
    resource_group_name         = var.resource_group_name
    resource_location           = var.resourcelocation
    account_tier                = var.storage_account_tier
    account_repl_type           = var.storage_account_replication_type 
    kv_name                     = lower("kv-${var.project}-${var.environment}")
    kv_rgname                   = var.resource_group_name
    tags = {
        environment   = var.environment
        description   = "${var.description} Storage Account"
        project       = var.project
    }

    depends_on = [ module.kv ]

}

resource "azurerm_storage_encryption_scope" "encryption" {

  name                  = "microsoftmanaged"
  storage_account_id    = module.sa.id
  source                = "Microsoft.Storage"

  depends_on = [ module.kv ]

}

module "blob" {

    #source   = "git@github.com:t-benedet/tf-azure-module-storage-container.git"
    source   = "git::https://github.com/t-benedet/tf-azure-module-storage-container.git"

    container_access_type       = "private"
    name                        = "${module.sa.name}-tfstate"
    storage_account_name        = module.sa.name

    depends_on = [  module.sa ]

}