FROM alpine:latest

RUN apk update
RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/$(curl https://fxserver-version.xy0.de)fx.tar.xz | tar xJ -C /srv

WORKDIR /srv
VOLUME ["/srv/cache", "/srv/resources"]

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "server.cfg"]
