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
  default     = "RG4-Fabryk-Test"
}

variable "resource_group_location" {
  type        = string
  description = "Emplacement du groupe de ressources"
  default     = "westeurope"
}

############################# - Storage Account - ###############################

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


############################# - Informations - ###############################

variable "resourcelocation" {
  description = "Location of resource group"
  type        = string

  default = "westeurope"
}

variable "environment" {
  description = "Environnment type"
  type        = string

  default = "dev4"
}

variable "owner" {
  description = "Owner"
  type        = string

  default = "timothee.benedet@gmail.com"
}

variable "description" {
  description = "Project description"
  type        = string

  default = "test"
}

variable "project" {
  description = "Project Name"
  type        = string

  default = "project"
}


############################# - Key Vault - ###############################

variable "key_vault_sku_name" {
  type        = string
  description = "SKU du coffre de clés"
  default     = "standard"
}

variable "key_vault_secret_permissions" {
  type        = list(string)
  description = "Liste des autorisations de secret pour le coffre de clés"
  default     = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
}

variable "key_vault_storage_permissions" {
  type        = list(string)
  description = "Liste des autorisations de secret pour le coffre de clés"
  default     = ["Backup", "Delete", "DeleteSAS", "Get", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "Set", "SetSAS", "Update"]
}

variable "key_vault_key_permissions" {
  type        = list(string)
  description = "Liste des autorisations de clé pour le coffre de clés"
  default     = ["Get","Create","Delete"]
}

variable "key_vault_retention" {
  type        = string
  description = "soft delete retention days"
  default     = "7"
}
