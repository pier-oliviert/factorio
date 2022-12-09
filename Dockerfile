FROM ubuntu:latest

WORKDIR /srv

RUN apt update -y
RUN apt install -y wget xz-utils
# RUN wget https://www.factorio.com/get-download/1.1.72/headless/linux64

# RUN tar -xf /srv/linux64
# RUN rm /srv/linux64

EXPOSE 34197/udp 27015/tcp
