############################# - Auth informations - ###############################

variable "subscription_id" {
  description = "Sub ID"
}

#variable "client_id" {
#  description = "Client ID"
#}
#
#variable "client_secret" {
#  description = "Client Secret"
#}

variable "tenant_id" {
  description = "tenant ID"
}

############################# - Resource Group - ###############################

variable "resource_group_name" {
  type        = string
  description = "Nom du groupe de ressources"
  default     = "RG1-Fabryk-Test"
}

variable "resource_group_location" {
  type        = string
  description = "Emplacement du groupe de ressources"
  default     = "westeurope"
}


############################# - Key Vault - ###############################

#variable "key_vault_name" {
#  type        = string
#  description = "Nom du coffre de clés"
#  default = "fabryk-key-vault"
#}
#
#variable "key_vault_location" {
#  type        = string
#  description = "Emplacement du groupe de ressources"
#  default     = "westeurope"
#}
#
#variable "key_vault_sku_name" {
#  type        = string
#  description = "SKU du coffre de clés"
#  default     = "standard"
#}
#
#variable "key_vault_secret_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de secret pour le coffre de clés"
#  default     = ["Backup", "Create", "Delete", "List"]
#}
#
#variable "key_vault_storage_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de secret pour le coffre de clés"
#  default     = ["Backup", "Delete", "Get", "list"]
#}
#
#variable "key_vault_key_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de clé pour le coffre de clés"
#  default     = ["Backup", "Create", "Delete", "List"]
#}
#
#variable "key_vault_certificate_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de clé pour le coffre de clés"
#  default     = ["Backup", "Create", "Delete", "List"]
#}


############################# - Storage Account - #############################

variable "storage_account_name" {
  type        = string
  description = "Fabryk-storage-account"
  default = "fabrykstorageaccount"
}

variable "storage_account_location" {
  type        = string
  description = "Fabryk-storage-account-location"
  default     = "westeurope"
}


variable "storage_account_tier" {
  type        = string
  description = "Fabryk-storage-account-tier"
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Fabryk-storage-account-replication-type"
  default     = "GRS"
}

variable "container_name" {
  type        = string
  description = "Test-fabryk-container"
  default = "fabryk-container"
}


variable "storage_account_container_access_type" {
  type        = string
  description = "Fabryk-storage-account-access-type"
  default     = "private"
}

############################# - Storage Container - #############################

variable "azurerm_storage_container" {
  type = string
  description = "Fabryk-storage-container"
  default = "sc-fabryk"
  
}

variable "azurerm_storage_container_access_type" {
  description = "Fabryk-storage-container-access-type"
  default = "private"
}############################# - Auth informations - ###############################

variable "subscription_id" {
  description = "Sub ID"
}

#variable "client_id" {
#  description = "Client ID"
#}
#
#variable "client_secret" {
#  description = "Client Secret"
#}

variable "tenant_id" {
  description = "tenant ID"
}

############################# - Resource Group - ###############################

variable "resource_group_name" {
  type        = string
  description = "Nom du groupe de ressources"
  default     = "RG1-Fabryk-Test"
}

variable "resource_group_location" {
  type        = string
  description = "Emplacement du groupe de ressources"
  default     = "westeurope"
}


############################# - Key Vault - ###############################

#variable "key_vault_name" {
#  type        = string
#  description = "Nom du coffre de clés"
#  default = "fabryk-key-vault"
#}
#
#variable "key_vault_location" {
#  type        = string
#  description = "Emplacement du groupe de ressources"
#  default     = "westeurope"
#}
#
#variable "key_vault_sku_name" {
#  type        = string
#  description = "SKU du coffre de clés"
#  default     = "standard"
#}
#
#variable "key_vault_secret_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de secret pour le coffre de clés"
#  default     = ["Backup", "Create", "Delete", "List"]
#}
#
#variable "key_vault_storage_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de secret pour le coffre de clés"
#  default     = ["Backup", "Delete", "Get", "list"]
#}
#
#variable "key_vault_key_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de clé pour le coffre de clés"
#  default     = ["Backup", "Create", "Delete", "List"]
#}
#
#variable "key_vault_certificate_permissions" {
#  type        = list(string)
#  description = "Liste des autorisations de clé pour le coffre de clés"
#  default     = ["Backup", "Create", "Delete", "List"]
#}


############################# - Storage Account - #############################

variable "storage_account_name" {
  type        = string
  description = "Fabryk-storage-account"
  default = "fabrykstorageaccount"
}

variable "storage_account_location" {
  type        = string
  description = "Fabryk-storage-account-location"
  default     = "westeurope"
}


variable "storage_account_tier" {
  type        = string
  description = "Fabryk-storage-account-tier"
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Fabryk-storage-account-replication-type"
  default     = "GRS"
}

variable "container_name" {
  type        = string
  description = "Test-fabryk-container"
  default = "fabryk-container"
}


variable "storage_account_container_access_type" {
  type        = string
  description = "Fabryk-storage-account-access-type"
  default     = "private"
}

############################# - Storage Container - #############################

variable "azurerm_storage_container" {
  type = string
  description = "Fabryk-storage-container"
  default = "sc-fabryk"
  
}

variable "azurerm_storage_container_access_type" {
  description = "Fabryk-storage-container-access-type"
  default = "private"
}
