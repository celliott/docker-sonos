docker sonos
===

A docker container to run [node-sonos-http-api](https://github.com/jishi/node-sonos-http-api) server.

usage
---

	$ make container
	$ make run


Now you can control your system by invoking the following commands:

	http://<sonos_api_host>:5005/zones
	http://<sonos_api_host>:5005/lockvolumes
	http://<sonos_api_host>:5005/unlockvolumes
	http://<sonos_api_host>:5005/pauseall[/{timeout in minutes}]
	http://<sonos_api_host>:5005/resumeall[/{timeout in minutes}]
	http://<sonos_api_host>:5005/preset/{JSON preset}
	http://<sonos_api_host>:5005/preset/{predefined preset name}
	http://<sonos_api_host>:5005/{room name}/{action}[/{parameter}]
	http://<sonos_api_host>:5005/reindex
	http://<sonos_api_host>:5005/sleep/{timeout in seconds or timestamp HH:MM:SS or off}

examples
---

`http://<sonos_api_host>:5005/<room>/volume/15`
(will set volume for room to 15%)

`http://<sonos_api_host>:5005/<room>/volume/+1`
(will increase volume by 1%)
