# LXC Selfhosted Services Plan

This plan outlines the pieces required to run several self-hosted services in separate LXC containers on Proxmox VE. Provisioning is automated with Ansible so each container can be rebuilt reproducibly.

## Redis
- Create a lightweight Debian or Ubuntu container template.
- Use an Ansible role to install and configure the Redis server.
- Expose required ports and mount persistent storage if needed.

## Matrix (Synapse)
- Prepare a container with Python and any required database clients (e.g. PostgreSQL).
- Use Ansible to deploy the Matrix Synapse server and generate initial configuration.
- Set up reverse proxy and TLS termination if chat will be accessed from outside the LAN.

## Moonlight (Sunshine)
- Build a container image that runs Sunshine, the open-source host for Moonlight game streaming.
- Configure GPU passthrough or virtualization support in Proxmox if hardware acceleration is required.
- Automate Sunshine installation and service management with an Ansible role.

## Playbook Structure
- Inventory file describing the Proxmox host and the LXC containers to deploy.
- Roles for each service to keep configurations modular.
- Tasks to create the containers, apply the roles and start the services.

This high-level approach keeps the services isolated, easily reproducible and manageable via Ansible.
