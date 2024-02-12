output "id" {
  description = "The unique identifier of the Kubernetes cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].id)
}

output "cluster_subnet" {
  description = "The subnet used for the Kubernetes cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].cluster_subnet)
}

output "service_subnet" {
  description = "The subnet used for Kubernetes services within the cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].service_subnet)
}

output "ipv4_address" {
  description = "The IPv4 address of the Kubernetes cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].ipv4_address)
}

output "endpoint" {
  description = "The endpoint for the Kubernetes API server."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].endpoint)
}

output "status" {
  description = "The current status of the Kubernetes cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].status)
}

output "created_at" {
  description = "The timestamp when the Kubernetes cluster was created."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].created_at)
}

output "updated_at" {
  description = "The timestamp when the Kubernetes cluster was last updated."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].updated_at)
}

output "auto_upgrade" {
  description = "Indicates whether auto-upgrade is enabled for the Kubernetes cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].auto_upgrade)
}

output "urn" {
  description = "The Uniform Resource Name (URN) of the Kubernetes cluster."
  value       = join("", digitalocean_kubernetes_cluster.cluster[*].urn)
}
