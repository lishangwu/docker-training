# https://www.runoob.com/docker/docker-install-mysql.html


docker rm -f mysql-test
docker rm -f wordpress
sudo rm -rf docker_mysql_test

docker run -itd \
    --name mysql-test \
    -v ~/docker_mysql_test/conf:/etc/mysql/conf.d \
    -v ~/docker_mysql_test/logs:/logs \
    -v ~/docker_mysql_test/data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=Autobot@123456 \
    -e MYSQL_DATABASE=wordpress \
    -p 7306:3306 \
     mysql:latest

docker run \
 -itd \
 --name wordpress \
 -e WORDPRESS_DB_HOST=mysql-test:3306 \
 -e WORDPRESS_DB_USER=root \
 -e WORDPRESS_DB_PASSWORD=Autobot@123456 \
 --link mysql-test \
 -p 7080:80 wordpress