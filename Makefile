SHELL = /bin/bash

#SCRIPT_DIR         = $(shell pwd)/etc/script
#请选择golang版本
BUILD_IMAGE_SERVER  = golang:1.18
#请选择node版本
BUILD_IMAGE_WEB     = node:16
#项目名称
PROJECT_NAME        = server
#配置文件目录
CONFIG_FILE         = config.yaml
#镜像仓库命名空间
IMAGE_NAME          = ba
#镜像地址
REPOSITORY          = registry.cn-hangzhou.aliyuncs.com/${IMAGE_NAME}


#构建web镜像
#修改配置文件，web/.env.production
#修改IP地址，web/.docker-compose/nginx/conf.d/ba-web.conf
build-web-image: build-web-local
	docker build --no-cache=true -t ba-web:latest ./web

#容器环境打包后端
#修改配置文件，server/config.docker.yaml
build-server-image:
	docker build --no-cache=true -t ba-server:latest ./server


#-------编译打包-------
#前端
build-web-local:
	@cd web/ && if [ -d "dist" ];then rm -rf dist; else echo "OK!"; fi \
	&& yarn config set registry http://mirrors.cloud.tencent.com/npm/ && yarn install && yarn build

#后端
build-server-local:
	@cd server/ && if [ -f "server" ];then rm -rf ba-server; else echo "OK!"; fi \
	&& source ~/.go1.20_bash  && go mod tidy \
	&& go build -o ba-server -ldflags "-B 0x$(shell head -c20 /dev/urandom|od -An -tx1|tr -d ' \n') -X main.Version=${TAGS_OPT}" -v
#	&& GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ba-server -ldflags "-B 0x$(shell head -c20 /dev/urandom|od -An -tx1|tr -d ' \n') -X main.Version=${TAGS_OPT}" -v


#-------本地运行-------
run-server:
	source ~/.go1.20_bash && cd ~/workspace/source/bee-admin/server/ && go run .

run-web:
	cd ~/workspace/source/bee-admin/web && npm run serve


#--------------
db-import:
	docker cp server/bee_admin.sql mysql:/root
	docker exec mysql bash -c "mysql -uroot -pWei!#2023 -e \"CREATE  DATABASE IF NOT EXISTS bee_admin; USE bee_admin; SOURCE /root/bee_admin.sql;\" "

db-export:
	docker exec -i mysql /usr/bin/mysqldump --opt --single-transaction --master-data=2 -R  -P3306  -uroot -pWei\!#2023 bee_admin  > server/bee_admin_export.sql

clean:
	docker images -q -f dangling=true | xargs docker rmi -f
