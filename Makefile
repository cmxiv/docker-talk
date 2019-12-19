
default:
	# docker-compose (do system prune before)
	docker build -t my-node-app-server .
	docker-compose up
