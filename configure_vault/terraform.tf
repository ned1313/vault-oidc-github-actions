terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = ">=0.41.0"
    }
  }

  cloud {
    organization = "ned-in-the-cloud"

    workspaces {
      name = "oidc-vault-cluster"
    }
  }
}

