#!/bin/bash

if ! type "ansible" > /dev/null; then
  export CRYPTOGRAPHY_DONT_BUILD_RUST=1
  sudo -H python3 -m pip install ansible
fi

git submodule update --remote --init

ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml $*
