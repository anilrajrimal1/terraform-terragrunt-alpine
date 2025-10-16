# terraform-terragrunt-alpine

A minimal Docker image based on Alpine Linux, preloaded with:

- **Terraform**: `v1.9.5`
- **Terragrunt**: `v0.67.15`

## Dockerfile Overview

This image includes:

- Alpine Linux (latest)
- curl, bash, unzip, and other dependencies
- Specific versions of:
  - Terraform: [`v1.9.5`](https://releases.hashicorp.com/terraform/1.9.5/)
  - Terragrunt: [`v0.67.15`](https://github.com/gruntwork-io/terragrunt/releases/tag/v0.67.15)

## Why Pin Versions?

Using pinned versions ensures that Terraform and Terragrunt behave consistently across environments and over time. 
This eliminates the "it worked on my machine" problem and prevents accidental upgrades from breaking your workflows.

