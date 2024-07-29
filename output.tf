output "kube_config" {
  description = "The Kubernetes config for accessing the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "load_balancer_ip" {
  description = "The public IP address of the load balancer"
  value       = azurerm_public_ip.aks.ip_address
}
