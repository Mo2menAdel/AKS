variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "aks-resource-group"
}

variable "location" {
  description = "The Azure region where the resources will be deployed"
  type        = string
  default     = "East US 2"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "aks-cluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "aksdns"
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the virtual machines in the default node pool"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "aks-vnet"
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "aks-subnet"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes of the subnet"
  type        = list(string)
  default     = ["10.240.0.0/16"]
}
