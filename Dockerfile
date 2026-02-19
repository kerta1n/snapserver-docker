FROM alpine:latest

LABEL maintainer="kerta1n"

ARG SNAPCAST_VERSION=0.34.0-r0

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
 && echo "https://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
 && apk add --no-cache bash snapcast-server=${SNAPCAST_VERSION} sed

CMD ["snapserver", "-c", "/etc/snapserver.conf"]
EXPOSE 1704/tcp 1705/tcp 1780/tcp
