variable "vault_cluster_id" {
  type        = string
  description = "(Required) ID for Vault Cluster created in HCP"
}

variable "vault_cluster_tier" {
  type        = string
  description = "(Optional) Tier for Vault Cluster created in HCP. Defaults to dev."
  default     = "dev"
}

variable "enable_vault_public_endpoint" {
  type        = bool
  description = "(Optional) Whether or not to create a public endpoint for the Vault cluster. Defaults to true."
  default     = true
}

variable "min_vault_version" {
  type        = string
  description = "(Optional) Minimum version of Vault to run in the cluster. Defaults to null."
  default     = null
}