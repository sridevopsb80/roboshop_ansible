#this shell script can be used to execute the rolename defined in main.yml. env variable is being passed during the execution of the command

git pull
ansible-playbook -i  $1.dev.sridevops.site, -e env=dev -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=$1 main.yml
