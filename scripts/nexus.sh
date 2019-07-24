adduser nexus

wget www.sonatype.org/downloads/nexus-latest-bundle.tar.gz
tar -zxvf nexus-latest-bundle.tar.gz
ln -s nexus-x.x.x-xx nexus

cp /home/nexus/nexus/bin/nexus /etc/init.d/nexus
chmod 755 /etc/init.d/nexus

nano /etc/init.d/nexus
> NEXUS_HOME="/home/nexus/nexus"
> RUN_AS_USER=nexus
> PIDDIR="/home/nexus"

cd /etc/init.d
update-rc.d nexus defaults
service nexus start
