mkdir -p ~/jenkins
sudo chmod 777 ~/jenkins
sudo docker build --no-cache -t jenkins . && \
sudo docker-compose up -d