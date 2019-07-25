# run Gitlab-ce docker image
sudo docker run --detach \
  --hostname gitlab.example.com \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://my.domain.com/'; gitlab_rails['lfs_enabled'] = true;" \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume /srv/gitlab/config:/etc/gitlab \
  --volume /srv/gitlab/logs:/var/log/gitlab \
  --volume /srv/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
# run Jenkins docker image 
docker run -d -p 8080:8080 -p 50000:50000 jenkins
# run sonarqube docker image 
docker run -d --name sonarqube -p 9000:9000 sonarqube
# run Nexus docker image 
$ docker run -d -p 8081:8081 --name nexus sonatype/nexus3


