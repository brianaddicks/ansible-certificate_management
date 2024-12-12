# ansible-certificate_management

The purpose of this Ansible collection is to make management of certificates across multiple technology domains easier.
The collecition is broken into 3 roles that are applicable to most certificate deployments.

## Installation

The collection can be installed with Ansible Galaxy.

```bash
ansible-galaxy collection install brianaddicks.certificate_management
```

Optionally you can use the Execution Environment at `quay.io/rh_ee_baddicks/cert-mgmt-ee`.
The definition for that EE can be found [here](https://github.com/brianaddicks/ansible-ee/tree/main/cert-mgmt-ee).
Note that this EE contains the prereqs for everything currently supported by the collection.
It would be best to build you're on EE with just what you need for your environment.
