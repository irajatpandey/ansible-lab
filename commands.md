ansible-playbook -i ./inventory/hosts.ini ./playbooks/install-nginx.yml --private-key=~/.ssh/rajat.pem


#Use the setup module to gather facts from one host and inspect output
Setup
ansible -i ./inventory/hosts.ini 13.61.100.32 -m setup --private-key=/Users/rajatpandey/.ssh/rajat.pem



Run Uptime command on all hosts
ansible -i ./inventory/hosts.ini all -m shell -a "uptime" --private-key=/Users/rajatpandey/.ssh/rajat.pem



Write a playbook that installs nginx on webservers and starts the service
