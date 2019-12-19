
default:
	# --interactive --tty is expanded for -i -t or -it
	docker run --interactive --tty --rm ubuntu /bin/bash
	@echo ""
	docker ps -a