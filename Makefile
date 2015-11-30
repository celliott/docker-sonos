# Makefile for docker-sonos

# docker settings
PORTS = -p 5005:5005
CONTAINER = sonos


.PHONY: container run

container :
	docker build -t $(CONTAINER) .

clean :
	rm -rf build

prep :
	mkdir build
	git clone git@github.com:jishi/node-sonos-http-api.git ./build/sonos_api
	
run :
	docker run --net="host" --restart=always --name $(CONTAINER) -i -d $(PORTS) $(ENVS) $(VOLUMES) -t $(CONTAINER)

stop :
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)

kill :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)

restart :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)
	docker run --name $(CONTAINER) -i -d $(PORTS) $(ENVS) $(VOLUMES) -t $(CONTAINER)

attach:
	docker attach $(CONTAINER)

tail:
	docker logs -f $(CONTAINER)
