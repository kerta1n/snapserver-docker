# snapserver-docker
Extremely light container (Alpine base, 22.4MB image size on x86!) to run a Snapcast server instance (with Snapweb).  

Personally used alongside the [Music Assistant container](https://www.music-assistant.io/installation/#docker-image) for a reliable Sonos-replacment setup.  
(MA allows you to use not just Spotify, but also Apple Music, Plexamp, etc. across multiple players)

This is a multi-arch image: supported architectures are 
- `amd64`
- `arm64`
- `armv7`  

# Usage for `docker compose`

> [!WARNING]
> As of March 2026, I've moved from pushing images on Dockerhub to GHCR (easy automatic Snapcast updates via GH Actions).
> 
> If your Compose file still uses the default `kertain/snapserver-docker` image, please change that to `ghcr.io/kerta1n/snapserver-docker:latest`.
>  
> This was changed in commit [1e23c6c](https://github.com/kerta1n/snapserver-docker/commit/1e23c6c6917d2f09dd286113858782af807a70b8), so you can ignore this warning if you are installing this for the first time.

Clone this repo, or download `compose.yml` into your current directory, and `snapserver.conf` into `./data/`.  
Run `docker compose up -d`

## Update to the newest version via 2 commands:  
1. `docker compose down --rmi all`
2. `docker compose up -d`

# Usage for UNRAID
Install the `docker compose` plugin from APPS, and go back to DOCKER.  
Scroll all the way down > create stack > edit stack > edit files > copy paste from [compose.yml](compose.yml)

Change `./data/` to `/mnt/user/appdata/snapserver-docker/data/` (line 10 in [compose.yml](compose.yml#L10)), then `wget` the [snapserver.conf](data/snapserver.conf) file from this repo into  `/mnt/user/appdata/snapserver-docker/data/`.

Exit the editor, then click the `Compose Up` button on the right.  

# Snapclient
[Github Repo](https://github.com/kerta1n/snapclient-docker)  
<!-- [Dockerhub](https://hub.docker.com/r/kertain/snapclient-docker) -->
<!-- [Dockerhub](https://hub.docker.com/r/kertain/snapserver-docker) -->

# Credits/info
Code is taken from/inspired by both [djmaze/librespot-snapserver](https://github.com/djmaze/librespot-snapserver) and [Saiyato/snapserver_docker](https://github.com/Saiyato/snapserver_docker).  

HUGE THANK YOU to Bart Ribbers for maintaining the Alpine build of Snapcast. [Bart Ribbers' GitHub](https://github.com/puretryout)