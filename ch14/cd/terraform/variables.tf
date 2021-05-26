variable "project_id" {}

variable "branch" {
  description = "branch"
  type        = string
  default     = "prod"
}

variable "cluster_name" {
  type      = string
  description = "cluster name"
  default   = "gitops-cluster"
}
variable "location" {
  type        = string
  description = "cluster location"
  default     = "us-central1-a"
}
variable "github_token" {
  description = "token for github"
  type        = string
}

variable "github_owner" {
  description = "github owner"
  type        = string
}

variable "repository_name" {
  description = "repository name"
  type        = string
  default     = "gitops-environments"
}

variable "github_deploy_key_title" {
  type        = string
  description = "Name of github deploy key"
  default     = "gitops-deploy-key"
}

variable "target_path" {
  type        = string
  description = "Relative path to the Git repository root where the sync manifests are committed."
  default    = "manifests"
}
