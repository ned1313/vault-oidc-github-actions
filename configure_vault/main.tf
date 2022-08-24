resource "hcp_hvn" "oidc" {
  hvn_id         = var.vault_cluster_id
  cloud_provider = "aws"
  region         = "us-west-2"
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_vault_cluster" "oidc" {
  cluster_id        = var.vault_cluster_id
  hvn_id            = hcp_hvn.oidc.hvn_id
  tier              = var.vault_cluster_tier
  min_vault_version = var.min_vault_version
  public_endpoint   = var.enable_vault_public_endpoint
}

resource "hcp_vault_cluster_admin_token" "oidc" {
  cluster_id = hcp_vault_cluster.oidc.cluster_id
}