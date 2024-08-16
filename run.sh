#this shell script can be used to execute the rolename defined in main.yml

git pull
ansible-playbook -i  $1.dev.sridevops.site, -e env=dev -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=$1 main.yml