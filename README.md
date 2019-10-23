# Development Essentials


Includes the following modules:

* Google Chrome - Thanks [koichirok][1]
* Docker - Thanks [geerlingguy][2]
* Useful command line tools



### Install:

    $ ansible-galaxy install chrgue.development_essentials


### Playbook example:

    - name: Setup development essentials
      hosts: all
      connection: local
      roles:
        - role: chr.development_essentials
          become: yes
        

### Ad-Hoc:

    $ sudo apt install wget
    $ bash <(wget -qO- https://raw.githubusercontent.com/chrgue/ansible-role-dev-essentials/master/adhoc.sh)


[1]: https://github.com/koichirok/ansible-role-google-chrome
[2]: https://github.com/geerlingguy/ansible-role-docker