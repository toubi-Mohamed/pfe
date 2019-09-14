wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
md5sum mysql57-community-release-el7-9.noarch.rpm
rpm -ivh mysql57-community-release-el7-9.noarch.rpm
yum install mysql-server
systemctl enable mysqld
systemctl start mysqld
systemctl status mysqld
grep 'temporary password' /var/log/mysqld.log
 mysql_secure_installation
 mysqladmin -u root -p version
CREATE DATABASE myProject 
CREATE USER 'myProject'@'localhost' IDENTIFIED BY 'pass'
CRANT ALL PRIVILEGES ON myProject.* TO 'myProject'@'localhost'
FLUSH PRIVILEGES
