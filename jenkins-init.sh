DOCKER_PATH=`whereis docker | cut -d ' ' -f 2`
DOCKER_COMPOSE_PATH=`whereis docker-compose | cut -d ' ' -f 2`
mkdir -p ~/jenkins
sudo chmod +x $DOCKER_PATH
sudo chmod +x $DOCKER_COMPOSE_PATH
sudo chmod +x /var/run/docker.sock
sudo docker run -d --name jenkins -p 50000:8080 \
 -v ~/jenkins:/var/jenkins_home \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v $DOCKER_PATH:$DOCKER_PATH \
 -v $DOCKER_COMPOSE_PATH:$DOCKER_COMPOSE_PATH \
 -u root \
 jenkins/jenkins
