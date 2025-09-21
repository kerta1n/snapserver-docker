FROM alpine:latest

LABEL maintainer="kerta1n"

ARG SNAPCAST_VERSION=0.32.3-r0

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories

RUN apk add --no-cache bash snapcast-server=${SNAPCAST_VERSION} sed

#ENV DEVICE_NAME=Snapcast
CMD snapserver -c /etc/snapserver.conf
EXPOSE 1704/tcp 1705/tcp 1780/tcp 