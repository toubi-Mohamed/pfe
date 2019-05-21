#install with pip 
apt-get install -y python-pip 
pip install ansible 
#pip install --upgrade ansible 

# install with apt 
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt-get update
apt-get install -y ansible 

#install with ppa
apt-get update 
apt-get install -y software-properties-common
apt-add-repository -y --update ppa:ansible/ansible
apt-get install -y ansible
