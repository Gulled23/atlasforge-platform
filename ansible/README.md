# AtlasForge Ansible

Ansible configuration management layer for the AtlasForge platform.

## Purpose

AtlasForge uses Ansible to configure and manage Linux hosts provisioned by Terraform.

## Structure

- `inventory/` — environment-specific inventories
- `playbooks/` — orchestration playbooks
- `roles/` — reusable configuration roles
- `ansible.cfg` — Ansible configuration

## Environments

The initial implementation targets the development environment. Additional environments can be introduced as the platform evolves.

## Security

Sensitive credentials, private keys, `.tfvars` files, and generated Terraform state must not be committed to the repository.
