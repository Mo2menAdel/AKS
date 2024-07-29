resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.aks.name
}

output "resource_group_location" {
  value = azurerm_resource_group.aks.location
}
