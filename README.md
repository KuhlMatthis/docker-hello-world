
DOCKERHUB_USERNAME = matthisdockers
DOCKERHUB_TOKEN = qSjDqjfwgcg5GJe 

to automaticaly update the containers by the robots

docker run -d \
    --name watchtower \
    --restart unless-stopped \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower -c \
    --interval 3600

