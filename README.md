# terraform lab

- to play Terraform

- while reading "Up and running with Terraform"

## some notes on "Up and running with Terraform"

- the section about remote state is obsolete, so I had to find the current approach

- I discovered the Terraform backend and in particular the `local` which allows to store the state locally, this is perfect for my experiments

- remote state is controlled via the Terraform code, like:

```
terraform {
  backend "local" {
    path = "/Users/neo/workspace/terraform/state-store/terraform.tfstate"
  }
}
```

and by the `tf init` command. The state can be also moved changing the above and re-executing `tf init`

- by trying to move my state for one of the services, this is what happened:

```
$ tf init

Initializing the backend...
Do you want to copy existing state to the new backend?
  Pre-existing state was found while migrating the previous "local" backend to the
  newly configured "local" backend. No existing state was found in the newly
  configured "local" backend. Do you want to copy this state to the new "local"
  backend? Enter "yes" to copy and "no" to start with an empty state.

  Enter a value: yes


Successfully configured the backend "local"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 1.26"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
