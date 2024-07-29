resource_group_name = "aks-resource-group"
location            = "East US 2"  # Change to a supported region
cluster_name        = "aks-cluster"
dns_prefix          = "aksdns"
node_count          = 1
vm_size             = "Standard_D2s_v3"  # Change to an available VM size
vnet_name           = "aks-vnet"
vnet_address_space  = ["10.0.0.0/8"]
subnet_name         = "aks-subnet"
subnet_address_prefixes = ["10.240.0.0/16"]
