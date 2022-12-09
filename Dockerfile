FROM ubuntu:latest

WORKDIR /srv

RUN apt update -y
RUN apt install -y wget xz-utils
RUN wget https://www.factorio.com/get-download/1.1.72/headless/linux64 && tar -xf /srv/linux64 && rm /srv/linux64

EXPOSE 34197/udp 27015/tcp

ENTRYPOINT ["/srv/headlesss/factorio --start-server-load-latest --server-settings /srv/data/server-settings.json"]
