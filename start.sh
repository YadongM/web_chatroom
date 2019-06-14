#!/bin/bash
docker run --rm --name redis \
-p 6379:6379 \
-d redis 

docker run --rm --name mysql \
-v $PWD/mysql/conf:/etc/mysql/conf.d \
-v $PWD/mysql/logs:/logs \
-v $PWD/mysql/data:/var/lib/mysql \
-e MYSQL_ROOT_HOST=% \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_DATABASE=WChat \
-p 3306:3306 \
-d daocloud.io/library/mysql:8.0.15

docker run -it --rm --name django \
-v $PWD/mysite:/web \
-p 8080:8080 \
-d mao_django sh 
