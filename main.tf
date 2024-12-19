# Configure the Azure provider
provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Create an Azure Resource Group
resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"  # Name of the Resource Group
  location = "East US"                 # Azure Region where the Resource Group will be created
}

# Define variables
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
