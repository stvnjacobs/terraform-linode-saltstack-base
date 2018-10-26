# Terraform Linode SaltStack Base

This is a simple example of using the `salt-masterless` provisioner in Terraform to provision Linodes.
It is meant to be a starting point that can be cloned and modified.

This example [creates a Linode](/main.tf) and [installs Nginx](/salt/).

## Getting Started

### Requirements

- Linode API Token
- `terraform` >= v0.11.10
- `ssh-agent` is up and running with `~/.ssh/id_rsa` added

### Process

Initialize the repository.
This will install the configured Linode provider.
```sh
terraform init
```

Set the required variables as Terraform variables.
```sh
export TF_VAR_linode_token="${LINODE_API_TOKEN}"
```

Do the thing.
```sh
terraform apply
```
