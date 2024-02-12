variable "name" {
  type        = string
  default     = ""
  description = "A name for the Kubernetes cluster."
}

variable "region" {
  type        = string
  default     = ""
  description = "The slug identifier for the region where the Kubernetes cluster will be created."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Whether to create the resources. Set to `false` to prevent the module from creating any resources."
}

variable "app_node_pools" {
  type        = map(any)
  default     = {}
  description = "Cluster additional node pools."
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "A list of tag names to be applied to the Kubernetes cluster."
}

variable "label_order" {
  type        = list(string)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`application`."
}

variable "kubernetes_version" {
  type        = string
  default     = "1.25.14-do.0"
  description = "The slug identifier for the version of Kubernetes used for the cluster"
}

variable "critical_node_pool" {
  type        = any
  default     = {}
  description = "Cluster default node pool."
}

variable "vpc_uuid" {
  type        = string
  default     = ""
  description = "The ID of the VPC where the Kubernetes cluster will be located."
}

variable "surge_upgrade" {
  type        = bool
  default     = false
  description = "Enable/disable surge upgrades for a cluster."
}

variable "auto_upgrade" {
  type        = bool
  default     = false
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
}

variable "ha" {
  type        = bool
  default     = true
  description = "Enable/disable the high availability control plane for a cluster. High availability can only be set when creating a cluster. "
}

variable "maintenance_policy" {
  type = object({
    day        = string
    start_time = string
  })
  default = {
    day        = "any"
    start_time = "02:00"
  }
  description = "A block representing the cluster's maintenance window."
}

variable "registry_integration" {
  type        = bool
  default     = false
  description = "Enables or disables the DigitalOcean container registry integration for the cluster."
}
