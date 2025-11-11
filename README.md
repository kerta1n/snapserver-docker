# snapserver-docker
Extremely light container (Alpine base) to run a Snapcast server instance. Personally used alongside the Music Assistant container for reliable multi-room music playback.

[Dockerhub](https://hub.docker.com/r/kertain/snapserver-docker)

This is a multi-arch image, code taken from both https://github.com/djmaze/librespot-snapserver and https://github.com/Saiyato/snapserver_docker

HUGE THANK YOU to Bart Ribbers for maintaining the Alpine build of Snapcast. [Bart Ribbers' Gitlab](https://gitlab.com/PureTryOut)


# Usage for docker compose
Clone this repo, configure data/snapserver.conf with your Spotify Premium details, and run `docker compose up -d`

# Usage for UNRAID
Install the docker compose plugin from APPS, and go back to DOCKER.

Scroll all the way down > create stack > edit stack > edit files > copy paste from compose.yml

Change ./data/ to /mnt/user/appdata/snapserver-docker/data/ (lines 8 & 9), and wget the appropriate files from this repo to the data dir

Compose up and you're set

# Openwrt
https://openwrt.org/docs/guide-user/virtualization/qemu_host

# Snapclient
[Github Repo](https://github.com/kerta1n/snapclient-docker)

[Dockerhub](https://hub.docker.com/r/kertain/snapclient-docker)
