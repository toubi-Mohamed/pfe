#install the manage software package for Python
apt-get install -y python3-pip
#install packages and development tools for python3
apt-get install -y build-essential libssl-dev libffi-dev python3-dev
#install venv module for creating a virtual environement for an isolated  on your server for Python projects
apt-get install -y python3-venv
#Creating virtual environments
python3 -m venv /home/env
# install molecule to test role ansible 
python3 -m pip install molecule 
# install docker the python library using by molecule to interface with docker 
python3 -m pip install docker 
#execute test in  role ansible
molecule test 
molecule converge
molecule destroy 
molecule verify 
# initial role ansible with molecule
molecule init -r test.name -d docker 
molecule init scenario 
