variable "vault_server_url" {
  type        = string
  description = "(Required) The URL of the Vault server"
}

variable "github_organization" {
  type        = string
  description = "(Required) The GitHub organization or username for the JWT authentication role."
}

variable "github_repository" {
  type        = string
  description = "(Required) The GitHub repository for the JWT authentication role."
}