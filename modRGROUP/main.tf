# Grupo de recursos.
resource "azurerm_resource_group" "resourceGroup" {
  name     = var.groupName
  location = var.groupLocation
}
