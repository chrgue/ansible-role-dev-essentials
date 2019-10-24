# Development Essentials

Installs essentials tools for developers.

 
Includes the following:

* Google Chrome Browser- Powered by [koichirok][1]
* Docker & Docker Compose- Powered by [geerlingguy][2]
* Useful command line tools:
  - git - version control system
  - xclip - clipboard management  
  - [httpcode][3] - explains the meaning of an HTTP status code on the command line
  - [httpie][4]- user friendly curl
  - [silversearcher-ag][5] - A code-searching tool
  - apache2-utils - package which includes [ApacheBench][6]


## Quick Start

Without much knowledge about ansible you can just copy & paste the following command in your terminal and you are good to go:

    $ bash <(wget -qO- https://raw.githubusercontent.com/chrgue/ansible-role-dev-essentials/master/install.sh)

## Manual - ansible way

#### Preconditions

First make sure you have ansible installed

    $ sudo apt-add-repository -y ppa:ansible/ansible
    $ sudo apt update
    $ sudo apt install -y ansible


#### Download ansible role

    $ ansible-galaxy install chrgue.development_essentials


#### Playbook usage:

    # playbook.yml
    - name: Setup development essentials
      hosts: localhost
      connection: local
      roles:
        - role: chr.development_essentials
          
#### Run playbook

    $ ansible-playbook playbook.yml 
 


[1]: https://github.com/koichirok/ansible-role-google-chrome
[2]: https://github.com/geerlingguy/ansible-role-docker

[3]: https://github.com/rspivak/httpcode
[4]: https://httpie.org/
[5]: https://github.com/ggreer/the_silver_searcher
[6]: https://httpd.apache.org/docs/2.4/programs/ab.html