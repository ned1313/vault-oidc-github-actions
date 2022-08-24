# Provisioning an HCP Vault Cluster

You will need to first set up an HCP account and generate a service principal to use with Terraform. Directions can be found [here](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/auth).

Make note of the service principal ID and secret and set them as environment variables: HCP_CLIENT_ID and HCP_CLIENT_SECRET.

```PowerShell
$env:HCP_CLIENT_ID = "CHANGE_ME"
$env:HCP_CLIENT_SECRET = "CHANGE_ME
```

```bash
export HCP_CLIENT_ID=CHANGE_ME
export HCP_CLIENT_SECRET=CHANGE_ME
```
