resource "azurerm_lb" "aks" {
  name                = "${var.cluster_name}-lb"
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.aks.id
  }
}
