#!/bin/bash

if ! type "ansible" > /dev/null; then
  sudo -H python3 -m pip install ansible
fi

git submodule update --remote --init

ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml $*
