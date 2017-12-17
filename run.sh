#!/bin/bash

if ! type "pip" > /dev/null; then
  sudo easy_install pip
fi

if ! type "ansible" > /dev/null; then
  sudo -H pip install ansible
fi

ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml
