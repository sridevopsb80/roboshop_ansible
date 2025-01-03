#!/bin/bash
git pull
ansible-playbook -i  $1.dev.sridevops.site, -e env=dev -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=$1 main.yml -e vault_token=$2


#this shell script can be used to execute the rolename defined in main.yml. env variable is being passed during the execution of the command

#command used when main.yml is executed in cli:
#git pull; ansible-playbook -i frontend.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=frontend main.yml <root token value of vault>

# $1,$2 value has to be passed while executing the run.sh.
# command to execute in cli: bash run.sh frontend <vault root token>

#the value for env variable is defined in run.sh and is passed to some service config files during execution.
#template folder is used for those services since we want the value to be carried over. files folder can not be used for these services since it is used with copy module and it will not pass the variable value.
