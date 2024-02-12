output "id" {
  value = module.Kubernetes_cluster.id
}

output "cluster_subnet" {
  value = module.Kubernetes_cluster.cluster_subnet
}

output "service_subnet" {
  value = module.Kubernetes_cluster.service_subnet
}

output "ipv4_address" {
  value = module.Kubernetes_cluster.ipv4_address
}

output "endpoint" {
  value = module.Kubernetes_cluster.endpoint
}

output "status" {
  value = module.Kubernetes_cluster.status
}

output "created_at" {
  value = module.Kubernetes_cluster.created_at
}

output "updated_at" {
  value = module.Kubernetes_cluster.updated_at
}

output "auto_upgrade" {
  value = module.Kubernetes_cluster.auto_upgrade
}

output "urn" {
  value = module.Kubernetes_cluster.urn
}
