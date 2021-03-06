output "cluster_endpoint" {
  description = "The endpoint for your Kubernetes API server"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].host
}

output "cluster_certificate_authority" {
  description = "The base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate
}

output "operator_ssh_user" {
  description = "SSH user to access cluster nodes with ssh_public_key"
  value       = "ubuntu" # Default
}
