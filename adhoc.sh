#!/bin/bash

ROLE=chrgue.development_essentials

# install ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

# install ansible role
ansible-galaxy install ${ROLE}

# run role
ansible-playbook "$@" /dev/stdin <<END
---
- hosts: localhost
  connection: local
  roles:
    - ${ROLE}
END