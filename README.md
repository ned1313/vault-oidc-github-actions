# GitHub Actions with Vault OIDC Demonstration

A demonstration of using GitHub OIDC to authenticate to HashiCorp Vault. The files included in this repository accompany the talk I delivered at HashiConf Global 2022. I will include a link to the talk when it comes available.

## What's in this repo?

There are two directories in this repository. The `configure_vault` directory has a Terraform configuration you can use to deploy an instance of Vault server to HashiCorp Cloud Platform. You will need an account on the platform to use the contents of the directory. You don't have to use HCP Vault if you wish to follow along, but it is much easier! There are two other options:

* Deploy your own Vault server with a public endpoint
* Deploy a private Vault server and also a GitHub runner instance on the same network

More information about using the contents of `configure_vault` is in the `README.md` for that directory.

The second directory is the `configure_demo` directory. It is meant to configure an instance of Vault server with the necessary auth method, policy, and secrets engine to work with the GitHub Actions workflow. It also will add the required GitHub Actions secrets to your instance of the repository.

The GitHub Actions workflow is defined in the `oidc_test.yml` file inside of the `.github/workflows` directory. It makes some assumptions about your repository and the Vault server in question. If you choose to deviate from the demo files, then you'll need to make adjustments. There is also a troubleshooting step helpfully named `Troubleshooting`. That section can help you determine what might be going wrong with your configuration if you run into issues. You can safely remove it once your config is working, as it exposes the contents of your JWT and Vault's response with a valid token.

## How to use this repo

If you're looking to take this demo for a spin, start by forking the repo into your own account. Then you will follow the `README.md` in the `configure_vault` directory to get your Vault server provisioned. Once that's complete, you can follow the `README.md` in the `configure_demo` directory to get the Vault server configured and the GitHub Actions secrets populated. The Terraform configurations both use Terraform Cloud as their backend. If you don't want to use Terraform Cloud, simply replace the backend with your preferred option.
