# What this directory does

This Terraform code is meant to configure the corresponding GitHub repository and Vault installation with the necessary authentication method, kv secret, and repo secrets. As input, we will need the URL of the GitHub repo. The Vault Server address and Vault Token should be set through environment variables. If you don't have a running Vault Server, you can spin one up using the `setup_hcp_vault` directory in the root of the repository.

## Prerequisites

You'll need the following environment variables set:

* `GITHUB_TOKEN` - Personal Access Token with permissions to edit the secrets in the GitHub repo
* `VAULT_TOKEN` - Token to be used with the Vault Server with permissions to create an authentication method, create an access policy, mount a k/v secrets engine, and write a secret to that engine
* `VAULT_ADDR` - The URL of the Vault Server to be configured. Should be in the form of `https://VAULT_SERVER_ADDRESS:8200`

You'll also need a Vault server deployed. The Vault server will need a public endpoint, since GitHub Actions will be using a public runner to access it. Don't want to use a public endpoint? Then you'll need to create a self-hosted GitHub Actions runner, which is well beyond the scope of this demo. If your Vault server is not using a publicly signed certificate, you'll also need to include the CA certificate in the GitHub workflow.

The easiest way to get things up and running is to use an HCP Vault instance at the Developer level. Otherwise you'll need to deploy a publicly accessible Vault server on your own, which isn't too hard, but it's more work. I have [a whole video about doing it with Azure Container Instances](https://www.youtube.com/watch?v=-ayAYPqbPtk) and persistent storage with Azure Files, if that's the route you want to take.
