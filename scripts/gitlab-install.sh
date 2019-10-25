#prepare silent installation of postifx
echo "postfix postfix/main_mailer_type select Internet Site" | debconf-set-sele$
echo "postfix postfix/mailname string $hostname.localdomain" | debconf-set-sele$
# install Gitlab Dependances 
apt-get install -y postfix \
openssh-server \
ca-certificates \
curl
# install Gitlab 
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
#set variable 
EXTERNAL_URL="http://git.gitlab.com" 
apt-get install -y gitlab-ce
# ficheir de configuration
/etc/gitlab/gitlab.rb
#lance instance gitlab avec configuration 
gitlab-ctl reconfigure 

