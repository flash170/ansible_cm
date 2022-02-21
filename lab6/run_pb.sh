#!/usr/bin/env bash

ansible-playbook -vv \
        -i hosts \
        -k -K \
        ./playbooks/install_database.yaml "$@"