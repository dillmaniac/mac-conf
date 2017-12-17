#!/bin/bash

if [ -n `which pip` ]; then
  sudo easy_install pip
fi

if [ -n `which ansible` ]; then
  sudo pip -H install ansible
fi

ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml
