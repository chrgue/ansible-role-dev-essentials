# Development Essentials



Include the following modules:

* Google Chrome - Thanks [koichirok][1]
* Docker - Thanks [geerlingguy][2]
* Useful command line tools



Install

    $ ansible-galaxy install git+git@github.com:chrgue/ansible-role-dev-essentials.git


Playbook example

    - name: Setup development essentials
      hosts: all
      connection: local
      roles:
        - role: cgu_dev_essentials
          become: yes
        

[1]: https://github.com/koichirok/ansible-role-google-chrome
[2]: https://github.com/geerlingguy/ansible-role-docker