## schaurian/fxserver-docker

[![](https://images.microbadger.com/badges/image/schaurian/fxserver-docker.svg)](https://microbadger.com/images/schaurian/fxserver-docker "Get your own image badge on microbadger.com")

### Features
- Easy to deploy
- New versions get automatically built (and can be updated with [watchtower](https://github.com/v2tec/watchtower))

### Usage (With docker-compose)
Before you start please read https://forum.fivem.net/t/fx-server-tutorial-how-to-setup-fx-server-on-linux-from-start-to-finish/37156



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
