FROM hypriot/rpi-alpine-scratch

MAINTAINER Cassandra Cruz <celkamada@gmail.com>

RUN set -xe \
	&& apk add --update --no-progress nfs-utils \
	&& rm -rf /var/cache/apk/*

EXPOSE 111/udp 2049/tcp

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
