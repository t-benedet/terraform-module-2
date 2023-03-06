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
###################################################################################



variable "RESOURCELOCATION" {
  description = "Location of resource group"
  type        = string

  default = "westeurope"
}

variable "ENVIRONMENT" {
  description = "Environnment type"
  type        = string

  default = "dev"
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