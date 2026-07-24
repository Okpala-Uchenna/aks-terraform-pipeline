variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "devops-project2-rg"
}

variable "location" {
  description = "Azure region to deploy into"
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "Globally unique name for the Azure Container Registry (letters/numbers only)"
  type        = string
  default     = "devopsdemoacr001"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "devops-demo-aks"
}

variable "node_count" {
  description = "Number of worker nodes in the AKS cluster"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "VM size for AKS nodes (kept small to minimize cost)"
  type        = string
  default     = "Standard_B2s"
}
