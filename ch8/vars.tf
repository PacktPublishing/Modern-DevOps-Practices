variable "subscription_id" {
  type        = string
  description = "The azure subscription id"
}

variable "client_id" {
  type        = string
  description = "The azure service principal appId"
}

variable "client_secret" {
  type        = string
  description = "The azure service principal password"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "The azure tenant id"
}

variable "rg_name" {
  type        = string
  description = "The resource group name"
}

variable "location" {
  type        = string
  description = "The resource group location"
}

variable "vm_size" {
  type        = string
  description = "The size of the VM"
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  type        = string
  description = "The Linux admin username that you want to configure"
}

variable "admin_password" {
  type        = string
  description = "The Linux admin password that you want to configure"
  sensitive   = "true"
}
