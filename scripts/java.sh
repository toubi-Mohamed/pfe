apt-get install -y dirmngr
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA8CACC073C3DB2A
echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/linuxuprising-java.list
apt-get update
apt-get install -y oracle-java12-installer
apt-get install -y oracle-java12-set-default
