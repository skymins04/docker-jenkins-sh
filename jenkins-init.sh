mkdir -p ~/jenkins
sudo chown 1000 ~/jenkins
sudo docker build --no-cache -t jenkins . && \
sudo docker-compose up -d