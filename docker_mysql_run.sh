# https://www.runoob.com/docker/docker-install-mysql.html

docker run -itd --name mysql-test -v ~/docker_mysql_test/conf:/etc/mysql/conf.d -v ~/docker_mysql_test/logs:/logs -v  ~/docker_mysql_test/data:/var/lib/mysql -p 7306:3306 -e MYSQL_ROOT_PASSWORD=Autobot@123456 -d mysql:latest