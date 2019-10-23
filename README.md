# Development Essentials



Include the following modules:

* Google Chrome - Thanks [koichirok][1]
* Docker - Thanks [geerlingguy][2]
* Useful command line tools



Install

    $ ansible-galaxy install chrgue.development-essentials


Playbook example

    - name: Setup development essentials
      hosts: all
      connection: local
      roles:
        - role: chr.development-essentials
          become: yes
        

[1]: https://github.com/koichirok/ansible-role-google-chrome
[2]: https://github.com/geerlingguy/ansible-role-docker