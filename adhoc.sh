#!/bin/bash

ROLE=chrgue.development_essentials

# install ansible
echo "Installing ${ROLE}"
echo -ne '####                      (install ansible)\r'
sudo apt-add-repository -y ppa:ansible/ansible &> /dev/null
echo -ne '#######                   (install ansible)\r'
sudo apt update &> /dev/null
echo -ne '##########                (install ansible)\r'
sudo apt install ansible &> /dev/null


# install ansible role
echo -ne '#############             (install role)\r'
ansible-galaxy install ${ROLE} &> /dev/null

# run role
echo -ne '################          (execute role)\r'
ansible-playbook "$@" /dev/stdin <<END
---
- hosts: localhost
  connection: local
  roles:
    - ${ROLE}
END