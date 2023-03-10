terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.45.0"
    }
  }                                                                                       
}

provider "azurerm" {
 # subscription_id = "${var.subscription_id}"
 # client_id       = "${var.client_id}"
 # client_secret   = "${var.client_secret}"
 # tenant_id       = "${var.tenant_id}"
  # Configuration options
  features {}
}


provider "github" {
    token    = var.TF_VAR_GITHUB_TOKEN
}