# Development Essentials

Installs essentials command line tools for developers.

Includes the following:
- git - version control system
- xclip - clipboard management  
- [httpcode][3] - explains the meaning of an HTTP status code on the command line
- [httpie][4]- user friendly curl
- [silversearcher-ag][5] - A code-searching tool
- apache2-utils - package which includes [ApacheBench][6]
- [kafkacat][7] - Generic command line non-JVM Apache Kafka producer and consumer
- [jq][8] - command-line JSON processor


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
 


[3]: https://github.com/rspivak/httpcode
[4]: https://httpie.org/
[5]: https://github.com/ggreer/the_silver_searcher
[6]: https://httpd.apache.org/docs/2.4/programs/ab.html
[7]: https://github.com/edenhill/kafkacat
[8]: https://stedolan.github.io/jq/