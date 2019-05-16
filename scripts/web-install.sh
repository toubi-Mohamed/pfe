#installation apache et php
apt-get install -y apache2 
apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-mysql php7.0-mbstring php7.0-zip
#install composer
curl -Ss https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer
