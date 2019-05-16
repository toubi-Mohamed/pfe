sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password admin'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password admin'
apt-get install  -y mysql-server
service mysql start
echo 'phpmyadmin phpmyadmin/dbconfig-install boolean false' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/app-password-confirm password vagrant' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/mysql/admin-pass password vagrant' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/password-confirm password vagrant' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/setup-password password vagrant' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/database-type select mysql' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/mysql/app-pass password vagrant' | debconf-set-selections
echo 'dbconfig-common dbconfig-common/mysql/app-pass password vagrant' | debconf-set-selections
echo 'dbconfig-common dbconfig-common/mysql/app-pass password' | debconf-set-selections
echo 'dbconfig-common dbconfig-common/password-confirm password vagrant' | debconf-set-selections
echo 'dbconfig-common dbconfig-common/app-password-confirm password vagrant' | debconf-set-selections
echo 'dbconfig-common dbconfig-common/app-password-confirm password vagrant' | debconf-set-selections
echo 'dbconfig-common dbconfig-common/password-confirm password vagrant' | debconf-set-selections
apt-get install -y phpmyadmin
#create Data base for sonar
CREATE DATABASE sonare;
CREATE USER 'sonare'@'localhost' IDENTIFIED BY 'sonare';
GRANT ALL PRIVILEGES ON sonare.* TO 'sonare'@'localhost';
FLUSH PRIVILEGES;
