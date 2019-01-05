## schauian/fxserver-nextcloud

[![](https://images.microbadger.com/badges/image/schaurian/fxserver-version.svg)](https://microbadger.com/images/schaurian/fxserver-version "Get your own image badge on microbadger.com")

### Features
- Easy to deploy
- New Versions get automatically released (and can be updated with [watchtower](https://github.com/v2tec/watchtower))

### Usage (With docker-compose)
```
version: '3'
services:
  fxserver:
    container_name: fxserver
    image: schaurian/fxserver-docker:latest
    restart: always
    volumes:
      - ./server.cfg:/srv/server.cfg
      - ./resources:/srv/resources
      - ./cache:/srv/cache
    ports:
      - "30120:30120/tcp"
      - "30120:30120/udp"
```
