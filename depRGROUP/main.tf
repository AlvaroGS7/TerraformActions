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
    resource_group_name  = var.staGroupName
    storage_account_name = var.staName
    container_name       = var.contName
    key                  = var.keyName
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

    rgroup = var.groupNAME
    location = var.groupLocation
}