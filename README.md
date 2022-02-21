# ansible_cm

# Добавил в lab5
---
- name: Populate service facts
  service_facts:

- name: start nginx if firewalld.service is stopped
  service:
    name: nginx
    state: started
    delegate_to: 127.0.0.1
  when: ansible_facts.services['firewalld.service'].state == 'stopped'

# Добавил в lab2

    - name: Create user
      user:
        name: "{{ user.login }}"
        password: "{{ user.password }}"
        shell: /bin/bash
        group: "{{ user.group }}"
      no_log: True
