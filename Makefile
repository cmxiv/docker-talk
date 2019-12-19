
default:
	# Create a Dockerfile (do system prune before)
	docker build -t my-node-app .
	docker run -d --rm -p 8080:9140 my-node-app
