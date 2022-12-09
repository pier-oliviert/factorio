FROM alpine:edge

RUN wget https://www.factorio.com/get-download/1.1.72/headless/linux64 /srv/headless

EXPOSE 34197/udp 27015/tcp

VOLUME /srv/data

ENTRYPOINT [ "/srv/headlesss/factorio --start-server-load-latest --server-settings /srv/data/server-settings.json" ]
