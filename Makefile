#Executing make frontend will execute the frontend defined here. for other components, define as necessary
#

frontend:
	git pull
	ansible-playbook -i  frontend.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=frontend main.yml

mongodb:
	git pull
	ansible-playbook -i  mongodb.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=mongodb main.yml

catalogue:
	git pull
	ansible-playbook -i  catalogue.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=catalogue main.yml

redis:
	git pull
	ansible-playbook -i  redis.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=redis main.yml

user:
	git pull
	ansible-playbook -i  user.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=user main.yml

cart:
	git pull
	ansible-playbook -i  cart.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=cart main.yml

mysql:
	git pull
	ansible-playbook -i  mysql.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=mysql main.yml

shipping:
	git pull
	ansible-playbook -i  shipping.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=shipping main.yml

rabbitmq:
	git pull
	ansible-playbook -i  rabbitmq.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=rabbitmq main.yml

payment:
	git pull
	ansible-playbook -i  payment.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=payment main.yml

dispatch:
	git pull
	ansible-playbook -i  dispatch.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=dispatch main.yml
