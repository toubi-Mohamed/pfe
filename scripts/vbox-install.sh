apt-get install -y \
sudo \
software-properties-common \
curl
sudo apt-add-repository 'deb http://download.virtualbox.org/virtualbox/debian stretch contrib'
sudo curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
sudo apt-get update
sudo apt-get install -y virtualbox-6.0

