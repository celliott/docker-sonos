FROM node:slim

MAINTAINER chris elliott

RUN apt-get update
RUN apt-get -y install npm git git-core

ADD build/sonos_api /sonos_api
RUN cd sonos_api && npm install 

ADD start.sh /start.sh

#WORKDIR /sonos_api

CMD /usr/local/bin/node /sonos_api/server.js
#CMD /bin/bash