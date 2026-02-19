FROM alpine:latest

LABEL maintainer="kerta1n"

ARG SNAPCAST_VERSION=0.34.0-r0

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
 && echo "https://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
 && apk add --no-cache bash snapcast-server=${SNAPCAST_VERSION} sed curl unzip

RUN SNAPWEB_VERSION=$(curl -fsSL "https://api.github.com/repos/badaix/snapweb/releases/latest" \
      | sed -n 's/.*"tag_name": "\([^"]*\)".*/\1/p') \
 && curl -fsSL "https://github.com/badaix/snapweb/releases/download/${SNAPWEB_VERSION}/snapweb.zip" \
      -o /tmp/snapweb.zip \
 && mkdir -p /usr/share/snapserver/snapweb \
 && unzip /tmp/snapweb.zip -d /usr/share/snapserver/snapweb \
 && rm -f /tmp/snapweb.zip

CMD ["snapserver", "-c", "/etc/snapserver.conf"]
EXPOSE 1704/tcp 1705/tcp 1780/tcp
