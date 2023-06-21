# Proveedor de la nube.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.97.0"
    }
  }
  
  # Configuración de Backend
 backend "azurerm" {
    resource_group_name  = "tfstaterookies"
    storage_account_name = "tfstaterookies"
    container_name       = "tfstaterookies"
    key                  = "tf-actions-alvaro.tfstate"
 }
  required_version = ">= 1.1.0"
}

# Configuración de provider.
provider "azurerm" {
  features {}
}

# Módulo Grupo de recursos.
module "mod_rgroup" {
    source = "../modRGROUP"

    groupName = var.groupName
    groupLocation = var.groupLocation
}