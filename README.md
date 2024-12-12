# ansible-certificate_management

The purpose of this Ansible collection is to make management of certificates across multiple technology domains easier.
The collection is broken into 3 roles that are applicable to most certificate deployments.

* [Discover](#discover)
* [Provision](#provision)
* [Deploy](#deploy)

## Installation

The collection can be installed with Ansible Galaxy.

```bash
ansible-galaxy collection install brianaddicks.certificate_management
```

Optionally you can use the Execution Environment at `quay.io/rh_ee_baddicks/cert-mgmt-ee`.
The definition for that EE can be found [here](https://github.com/brianaddicks/ansible-ee/tree/main/cert-mgmt-ee).
Note that this EE contains the prereqs for everything currently supported by the collection.
It would be best to build you're on EE with just what you need for your environment.

## Discover

This role is used to discover information about already present certificates on your managed nodes.
This could be used for documentation, auditing, etc.
Primarily it is used to inform the provision and deploy roles, and/or inspect certificate expiry to see if an update is needed.

## Provision

This role is used to create certificates and their related assets (keys, chains, etc).
This could be something as simple as pulling a key/certificate pair from a secrets manager, or creating new ones from scratch.

## Deploy

This role is used to actually push certificates out to your managed nodes.
From something simple like just placing files in the right place on your webserver,
to uploading certificates to a firewall, commiting those changes, and cycling services as needed.

## Examples

This example runs through all 3 roles in order.
The idea is to discover information about certificates already provisionined.
Then use that information to provision/renew those certificates.
Finally, deploy the new certificates to the managed nodes.

```ansible
---
- name: Update Certificates
  hosts: certificatehosts
  gather_facts: false

  tasks:
    - name: Discover cert info
      ansible.builtin.include_role:
        name: discover

    - name: Provision certs
      ansible.builtin.include_role:
        name: provision

    - name: Deploy certs
      ansible.builtin.include_role:
        name: deploy
```
