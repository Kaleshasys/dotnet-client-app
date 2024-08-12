terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.115.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kalesha-test"             # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "stoargeaccount345"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    access_key           = "$(access_key)"  # Can also be set via `ARM_ACCESS_KEY` environment variable.
  }
}
provider "azurerm" {
  client_id       = var.client_id 
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id 
  subscription_id = var.subscription_id 
  features {}
}