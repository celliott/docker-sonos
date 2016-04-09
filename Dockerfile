FROM hypriot/rpi-node

MAINTAINER chris elliott

ADD build/sonos_api /sonos_api
RUN cd sonos_api && npm install 

CMD /usr/local/bin/node /sonos_api/server.js
