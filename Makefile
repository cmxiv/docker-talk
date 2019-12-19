
default:
	# docker-compose (do system prune before)
	docker build -t my-node-app-server .
	docker-compose up

clean:
	docker stop my-node-app my-docked-mongo
	docker rm my-node-app my-docked-mongo
	docker rmi my-node-app-server
	docker network rm docker-talk_database docker-talk_webserver