.PHONY: mysql.local.run reids.local.run
mysql.local.run:
	docker run -d -p 3306:3306 --platform linux/amd64 \
    	-e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=raichu_test \
		-e MYSQL_USER=test -e MYSQL_PASSWORD=test \
    	--name db mysql/mysql-server:8.0

redis.local.run:
	docker run --name redis -d -p 6379:6379 redis

mongo.local.run:
	docker run -d -p 27017:27017 \
	-e MONGODB_CLIENT_EXTRA_FLAGS=--authenticationDatabase=admin \
	-e MONGO_INITDB_ROOT_USERNAME=test -e MONGO_INITDB_ROOT_PASSWORD=test \
	--name mongo mongo
