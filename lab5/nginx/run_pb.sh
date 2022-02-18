#!/usr/bin/env bash

ansible-playbook -vvv \
        -i inventory/dev/dev.ini \
        -k -K  \
        playbook.yml "$@"