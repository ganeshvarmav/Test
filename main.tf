# Azure Provider Configuration
provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Resource block for Azure Resource Group
resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"  # Name of the Resource Group
  location = "East US"                 # Location (Azure Region)
}

# Variables
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

