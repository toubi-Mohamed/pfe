#Install Jenkins Agent on the Slave Node
#running on master node:

sudo -iu jenkins

ssh root@<slave_ip> mkdir -p .ssh

cat .ssh/id_rsa.pub | ssh root@<slave_ip> 'cat >> .ssh/authorized_keys'

#running on slave node:

mkdir ~/bin

cd bin

wget http://<master_ip>:8080/jnlpJars/slave.jar

sudo apt-get install default-jre 
start slave agent: 

ssh root@<slave_ip> java -jar /root/bin/slave.jar 
