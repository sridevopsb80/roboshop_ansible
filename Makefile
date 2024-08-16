#Executing make frontend will execute the frontend defined here. for other components, define as necessary
#

frontend:
	git pull
	ansible-playbook -i  frontend.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=frontend main.yml

mongodb:
	git pull
	ansible-playbook -i  mongodb.dev.sridevops.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=mongodb main.yml