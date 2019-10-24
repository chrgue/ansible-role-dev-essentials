#!/bin/bash

ROLE=chrgue.development_essentials

# install ansible
sudo sh -c '
  apt-add-repository -y ppa:ansible/ansible
  apt update
  apt install -y ansible
' &&
# install role
ansible-galaxy install ${ROLE} &&
# execute role
ansible-playbook "$@" /dev/stdin <<END
---
- hosts: localhost
  connection: local
  roles:
    - ${ROLE}
END