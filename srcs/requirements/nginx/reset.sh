docker stop $(docker ps -aq)
docker rm  $(docker ps -aq)
docker build -t nginx . 
docker run --name so  -d -p 443:443  nginx
docker logs so