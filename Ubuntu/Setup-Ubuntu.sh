#!/bin/bash

sudo apt update && sudo apt install git ansible -y
git clone https://github.com/syth3/VM-Setup.git

ansible-playbook --ask-become-pass VM-Setup/Ubuntu/setup-host.yml
ansible-playbook --ask-become-pass VM-Setup/Ubuntu/playbook.yml

# Still need to add code to set the following programmatically:
# - Set python_version in VM-Setup/Ubuntu/group_vars/all.yml to newest version
# - Set docker_compose_version in VM-Setup/Ubuntu/group_vars/all.yml to newest version
# - Update Ansible to get current username as username in VM-Setup/Ubuntu/group_vars/all.yml
