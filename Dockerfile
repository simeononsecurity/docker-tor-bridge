FROM alpine:latest
LABEL org.opencontainers.image.source="https://github.com/simeononsecurity/docker-tor-bridge"
LABEL org.opencontainers.image.description="Quickly Spin up a Tor Bridge"

RUN apk update && apk add \
    tor \
    --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    && rm -rf /var/cache/apk/*
EXPOSE 9050
COPY torrc.default /etc/tor/torrc.default
RUN chown -R tor /etc/tor
USER tor
ENTRYPOINT [ "tor" ]
CMD [ "-f", "/etc/tor/torrc.default" ]
