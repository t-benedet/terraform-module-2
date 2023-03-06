locals {
  #resourceGroup = var.RESOURCEGROUPNAME
  location      = var.RESOURCELOCATION
  environment   = var.ENVIRONMENT
  owner         = "example@kyndryl.com"
  description   = "demo lz deployment"
  project       = "lzdemo1"
}


resource "azurerm_resource_group" "rg" {

    name               = var.resource_group_name
    location           = var.resource_group_location
    #environment        = var.resource_group_environment
    #description        = var.resource_group_environment
    #project            = var.project
}


module "kv" {
    source   = "git@github.com:t-benedet/tf-azure-module-keyvault.git"

    enabled_for_disk_encryption = false
    key_permissions = ["Get","Create","Delete"]
    keyvault_name                = lower("kv-${var.project}-${var.ENVIRONMENT}")
    purge_protection_enabled    = false
    resource_group_name = var.resource_group_name
    resource_location   = var.RESOURCELOCATION
    secret_permissions  = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
    sku_name    = "standard"
    soft_delete_retention_days   = 7
    storage_permissions = ["Backup", "Delete", "DeleteSAS", "Get", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "Set", "SetSAS", "Update"]
    tags = {
        environment = var.ENVIRONMENT
        description   = "${var.description} Key Vault"
        project    = var.project
    }

    depends_on = [
        azurerm_resource_group.rg
    ]
}

module "sa" {
    source   = "git@github.com:t-benedet/tf-azure-module-storage-account.git"

    name                = lower("sa${var.project}${var.ENVIRONMENT}")
    resource_group_name = var.resource_group_name
    resource_location   = var.RESOURCELOCATION
    account_tier        = "Standard"
    account_repl_type   = "GRS"
    kv_name             = lower("kv-${var.project}-${var.ENVIRONMENT}")
    kv_rgname           = var.resource_group_name
    tags = {
        environment = var.ENVIRONMENT
        description   = "${var.description} Storage Account"
        project    = var.project
    }

    depends_on = [
        module.kv
    ]

}

module "blob" {
    source   = "git@github.com:t-benedet/tf-azure-module-storage-container.git"

    container_access_type = "private"
    name    =   "${module.sa.name}-tfstate"
    storage_account_name = module.sa.name

    depends_on = [
        module.sa
    ]

}