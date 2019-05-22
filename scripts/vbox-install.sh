#install virtualbox 
sudo apt-add-repository 'deb http://download.virtualbox.org/virtualbox/debian stretch contrib'
sudo curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
sudo apt-get update
sudo apt-get install -y virtualbox-6.0
rm -r oracle_vbox_2016.asc
VBoxManage --version
#install vboxdrv
#apt-get install -y linux-headers-`uname -r`
#apt-get install -y dkms
#/etc/init.d/vboxdrv setup

