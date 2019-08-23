# Add VirtualBox PPA 
apt-add-repository 'deb http://download.virtualbox.org/virtualbox/debian stretch contrib'
# Import Oracle public key
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
apt-get update
apt-get install -y virtualbox-6.0
# verification installation of virtualbox 
VBoxManage --version
#install vboxdrv
#apt-get install -y linux-headers-`uname -r`
#apt-get install -y build-essential
#apt-get install -y dkms
#/etc/init.d/vboxdrv setup
echo deb http://ftp.debian.org/debian stretch-backports main contrib > /etc/apt/sources.list.d/stretch-backports.list
apt-get update 
apt install virtualbox-guest-dkms virtualbox-guest-x11 linux-headers-$(uname -r)
#install vagrant plugin vbox guest
vagrant plugin install vagrant-vbguest


