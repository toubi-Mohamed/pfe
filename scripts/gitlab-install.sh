echo "postfix postfix/main_mailer_type select Internet Site" | debconf-set-sele$
echo "postfix postfix/mailname string $hostname.localdomain" | debconf-set-sele$
apt-get install -y postfix
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.d$
apt-get install -y gitlab-ce

