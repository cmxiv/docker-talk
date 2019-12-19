NODE_CONTAINER = my-node-server


default:
	# Volumes and port bindings
	docker run -it -d -v`pwd`/src:/app/src --rm --name $(NODE_CONTAINER) node:8.17 node /app/src/app.js

logs:
	# -f is shorthand for --follow
	docker logs -f $(NODE_CONTAINER)

inspect:
	# Inspects a docker instance, get JSON subsections via --format='{{json .NetworkSettings}}'
	docker inspect $(NODE_CONTAINER)