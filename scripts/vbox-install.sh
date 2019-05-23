# Add VirtualBox PPA 
sudo apt-add-repository 'deb http://download.virtualbox.org/virtualbox/debian stretch contrib'
# Import Sign Key
sudo curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo curl -O https://www.virtualbox.org/download/oracle_vbox.asc
sudo apt-key add oracle_vbox_2016.asc
sudo apt-key add oracle_vbox.asc
sudo apt-get update
sudo apt-get install -y virtualbox-6.0
rm -r \
oracle_vbox_2016.asc \
oracle_vbox.asc
# verification installation of virtualbox 
VBoxManage --version
#install vboxdrv
#apt-get install -y linux-headers-`uname -r`
#apt-get install -y build-essential
#apt-get install -y dkms
#/etc/init.d/vboxdrv setup

