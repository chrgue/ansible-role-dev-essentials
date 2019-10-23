#!/bin/bash

ROLE=chrgue.development_essentials

# Install ansible
sudo apt install -y ansible

# Install anisble role
ansible-galaxy install ${ROLE}

# Execute ad hoc command
ansible localhost -m include_role -a name=${ROLE}
