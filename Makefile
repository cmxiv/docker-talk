
default:
	# detach and attach
	@echo "Starting deamonized docker container"
	docker run -it -d --rm --name my-ubuntu-A ubuntu /bin/bash
	
	@echo ""
	@echo "Starting attached docker container"
	docker run -it --rm --name my-ubuntu-B ubuntu /bin/bash

	@echo ""
	docker ps -a

	@echo ""
	@echo "Attaching to detached container"
	docker attach my-ubuntu-A

	@echo ""
	docker ps -a