############################# - Auth informations - ###############################

variable "subscription_id" {
  description = "Sub ID."
}

#variable "client_id" {
#  description = "Client ID"
#}
#
#variable "client_secret" {
#  description = "Client Secret"
#}

variable "tenant_id" {
  description = "Tenant ID."
}

############################# - Resource Group - ###############################

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
  default     = "RG5-Fabryk-Test"
}

variable "resource_group_location" {
  type        = string
  description = "Resource group location."
  default     = "westeurope"
}

############################# - Storage Account - ###############################

variable "storage_account_tier" {
  type        = string
  description = "Fabryk-storage-account-tier."
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Fabryk-storage-account-replication-type."
  default     = "GRS"
}


############################# - Informations - ###############################

variable "resourcelocation" {
  description = "Location of resource group."
  type        = string

  default = "westeurope"
}

variable "environment" {
  description = "Environnment type."
  type        = string

  default = "dev5"
}

variable "owner" {
  description = "Owner."
  type        = string

  default = "timothee.benedet@gmail.com"
}

variable "description" {
  description = "Project description."
  type        = string

  default = "test"
}

variable "project" {
  description = "Project Name."
  type        = string

  default = "project"
}


############################# - Key Vault - ###############################

variable "key_vault_sku_name" {
  type        = string
  description = "SKU of Key Vault."
  default     = "standard"
}

variable "key_vault_secret_permissions" {
  type        = list(string)
  description = "Key vault secret permissions."
  default     = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
}

variable "key_vault_storage_permissions" {
  type        = list(string)
  description = "Key vault storage secret permissions."
  default     = ["Backup", "Delete", "DeleteSAS", "Get", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "Set", "SetSAS", "Update"]
}

variable "key_vault_key_permissions" {
  type        = list(string)
  description = "Key vault keys  secret permissions."
  default     = ["Get","Create","Delete"]
}

variable "key_vault_retention" {
  type        = string
  description = "Soft delete retention days."
  default     = "7"
}
