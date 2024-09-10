variable "arg_name" {
  description = "The name of the resource group"
  type        = string
  default     = "s224021028arg"
}

variable "location" {
  description = "The location for resources"
  type        = string
  default     = "Australia Southeast"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "s224021028acr"
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
  type        = string
  default     = "s224021028aks"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "s224021028dns"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
  default     = "1.30.3"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "1557fa44-405d-45a8-a16c-5e276e874bd9"
}

variable "apsql_username" {
    description = "Azure PostgreSQL database admin username"
    type = string
    default = "s224021028"
}

variable "apsql_password" {
    description = "Azure PostgreSQL database admin password"
    type = string
    default = "admin-roy97"
}