provider "google" {
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}

terraform {
  required_version = ">= 0.13"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.5.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.0.13"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }

  backend "gcs" {
    bucket = "tf-state-gitops-terraform-a"
    prefix = "gitops-terraform"
  }
}

provider "flux" {}
