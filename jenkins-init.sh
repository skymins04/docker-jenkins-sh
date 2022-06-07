mkdir -p ~/jenkins
<<<<<<< HEAD
sudo chown -R 1000:1000 ~/jenkins
=======
sudo chmod 777 ~/jenkins
>>>>>>> 123ed453
sudo docker build --no-cache -t jenkins . && \
sudo docker-compose up -d