# Create network
docker network create mynet

# docker create volume for db
docker volume create data-vol

#Start the mydb container
docker container run -d --name mydb --network mynet --mount type=volume,src=data-vol dst=/var/lib/mysql

#gget 

k get svc -ningress-nginx 