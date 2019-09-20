#import the MongoDB public GPG Key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
#source list for bionic ubuntu
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
#source liste for xenial ubuntu
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get update
apt-get install -y mongodb-org
#file
#/var/lib/mongodb
#/var/log/mongodb/mongodb.log
#/etc/mongob.conf
mongo --eval 'db.runCommand({ connectionStatus: 1 })'
