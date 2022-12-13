#/bin/bash
#ansible installation steps
#sudo add-apt-repository ppa:ansible/ansible
#sudo apt-get update
#sudo apt update 
#sudo apt install software-properties-common
#sudo add-apt-repository --yes --update ppa:ansible/ansible
#sudo apt install ansible -y 

sudo yum update 
sudo yum install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo yum install ansible -y 

#https://phoenixnap.com/kb/install-ansible-Gubuntu-20-04 # ansible configuration


#ansible all -m ping
