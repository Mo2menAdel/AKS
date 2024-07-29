resource "azurerm_public_ip" "aks" {
  name                = "${var.cluster_name}-public-ip"
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  allocation_method   = "Static"  # Standard SKU requires static allocation
  sku                 = "Standard"
}

output "public_ip_id" {
  value = azurerm_public_ip.aks.id
}
