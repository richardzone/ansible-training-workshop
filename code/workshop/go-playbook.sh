#/bin/sh

EXTRA_ANSIBLE_VARS=$1

ansible-playbook setup_tomcat.yml -i inventory -k $1
