sudo chmod +x /usr/bin/docker
sudo chmod +x /usr/bin/docker-compose
sudo chmod +x /var/run/docker.sock
sudo docker run -d --name jenkins -p 50000:8080 \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v /usr/bin/docker:/usr/bin/docker \
 -v /usr/bin/docker-compose:/usr/bin/docker-compose \
 -u root \
 jenkins/jenkins
